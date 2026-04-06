#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
ROS TurtleSim Digit Drawing — Homework #1
Student ID: U2210167
Target Digits: 0, 1, 6, 7
"""

import rospy
import threading
import math
from geometry_msgs.msg import Twist
from turtlesim.srv import Spawn, TeleportAbsolute, SetPen

# ═══════════════════════════════════════════════════════════════════════════════
#  Configuration & Boundaries
# ═══════════════════════════════════════════════════════════════════════════════

RATE_HZ = 100
DEFAULT_SPEED = 1.0          # slowed from 1.5 for smoother drawing
PEN_WIDTH = 4
PEN_COLOR = (255, 255, 255)

CANVAS_SIZE = 11.08
ZONES = 4
ZONE_WIDTH = CANVAS_SIZE / ZONES

BASELINE_Y = 4.0   # absolute floor for all digits
MAX_TOP_Y  = 6.5   # absolute ceiling for all digits

# ═══════════════════════════════════════════════════════════════════════════════
#  TurtleDigitDrawer Class
# ═══════════════════════════════════════════════════════════════════════════════

class TurtleDigitDrawer:
    def __init__(self, turtle_name, digit, cx, barrier):
        self.name    = turtle_name
        self.digit   = int(digit)
        self.cx      = cx
        self.barrier = barrier

        self.pub = rospy.Publisher(f'/{self.name}/cmd_vel', Twist, queue_size=10)
        self.rate = rospy.Rate(RATE_HZ)
        self.teleport_proxy = rospy.ServiceProxy(f'/{self.name}/teleport_absolute', TeleportAbsolute)
        self.set_pen_proxy  = rospy.ServiceProxy(f'/{self.name}/set_pen', SetPen)

    def pen_up(self):
        self.set_pen_proxy(255, 255, 255, PEN_WIDTH, 1)

    def pen_down(self):
        self.set_pen_proxy(PEN_COLOR[0], PEN_COLOR[1], PEN_COLOR[2], PEN_WIDTH, 0)

    def teleport(self, x, y, theta):
        self.teleport_proxy(x, y, theta)

    def move_forward(self, distance, speed=DEFAULT_SPEED):
        twist = Twist()
        twist.linear.x = speed
        duration = abs(distance) / speed
        self._publish_for(twist, duration)

    def draw_arc(self, radius, sweep_angle, speed=DEFAULT_SPEED):
        angular_vel = speed / radius
        if sweep_angle < 0:
            angular_vel = -angular_vel
        twist = Twist()
        twist.linear.x  = speed
        twist.angular.z = angular_vel
        duration = abs(sweep_angle) * radius / speed
        self._publish_for(twist, duration)

    def _publish_for(self, twist, duration):
        steps = int(duration * RATE_HZ)
        for _ in range(steps):
            if rospy.is_shutdown(): return
            self.pub.publish(twist)
            self.rate.sleep()
        self.pub.publish(Twist())

    # ── Digits ──────────────────────────────────────────────────────────────────

    def draw_0(self):
        """Pill-shaped oval: two straight sides + two semicircular ends."""
        self.pen_up()
        self.teleport(self.cx + 0.6, BASELINE_Y + 0.6, math.pi / 2.0)
        rospy.sleep(0.1)
        self.pen_down()
        self.move_forward(1.3)
        self.draw_arc(0.6, math.pi)
        self.move_forward(1.3)
        self.draw_arc(0.6, math.pi)

    def draw_1(self):
        """Serif hook + vertical spine + base serif."""
        # Hook
        self.pen_up()
        self.teleport(self.cx - 0.3, MAX_TOP_Y - 0.6, math.pi / 3.0)
        rospy.sleep(0.1)
        self.pen_down()
        self.move_forward(0.7)

        # Vertical spine
        self.pen_up()
        self.teleport(self.cx, MAX_TOP_Y, -math.pi / 2.0)
        rospy.sleep(0.1)
        self.pen_down()
        self.move_forward(2.5)

        # Base serif
        self.pen_up()
        self.teleport(self.cx - 0.4, BASELINE_Y, 0.0)
        rospy.sleep(0.1)
        self.pen_down()
        self.move_forward(0.8)

    def draw_6(self):
                """Classic 6: full circle, then a straighter, longer tail from left.

                Adjustments made:
                - Increased circle radius so the digit matches neighboring sizes.
                - Tail uses a very small outward bend and then a long straight rise
                    so it hits the same vertical boundary as other digits.
                """
                rc = 0.8
                circle_cy = BASELINE_Y + rc

                # 1) Draw full circle (CCW) starting at the rightmost point
                self.pen_up()
                self.teleport(self.cx + rc, circle_cy, math.pi / 2.0)
                rospy.sleep(0.05)
                self.pen_down()
                self.draw_arc(rc, 2 * math.pi)

                # 2) Tail: start at leftmost point, face up, gentle outward bend then straight up
                self.pen_up()
                self.teleport(self.cx - rc, circle_cy, math.pi / 2.0)
                rospy.sleep(0.05)
                self.pen_down()
                # small outward curve (less curved than before)
                self.draw_arc(1.2, -math.pi / 6.0)
                # extend the tail upward so it aligns with other digits' height
                self.move_forward(1.2)
    def draw_7(self):
        """Top bar + straight diagonal stroke."""
        # Top bar
        self.pen_up()
        self.teleport(self.cx - 0.6, MAX_TOP_Y, 0.0)
        rospy.sleep(0.1)
        self.pen_down()
        self.move_forward(1.2)

        # Diagonal
        self.pen_up()
        drop_angle = math.atan2(-2.5, -0.8)
        drop_dist  = math.hypot(-0.8, -2.5)
        self.teleport(self.cx + 0.6, MAX_TOP_Y, drop_angle)
        rospy.sleep(0.1)
        self.pen_down()
        self.move_forward(drop_dist)

    # ── Thread entry ─────────────────────────────────────────────────────────────

    def run(self):
        self.barrier.wait()
        draw_map = {0: self.draw_0, 1: self.draw_1, 6: self.draw_6, 7: self.draw_7}
        draw_map[self.digit]()


# ═══════════════════════════════════════════════════════════════════════════════
#  Main
# ═══════════════════════════════════════════════════════════════════════════════

def main():
    rospy.init_node('hw1_u2210167', anonymous=False)
    digits = [0, 1, 6, 7]

    rospy.wait_for_service('/spawn')
    spawn_service = rospy.ServiceProxy('/spawn', Spawn)
    turtle_names  = ['turtle1', 'turtle2', 'turtle3', 'turtle4']

    for i in range(1, 4):
        try:
            spawn_service(0, 0, 0, turtle_names[i])
        except:
            pass

    centers_x = [(i + 0.5) * ZONE_WIDTH for i in range(ZONES)]
    barrier   = threading.Barrier(4)
    threads   = []

    for i in range(4):
        drawer = TurtleDigitDrawer(turtle_names[i], digits[i], centers_x[i], barrier)
        t = threading.Thread(target=drawer.run)
        t.start()
        threads.append(t)

    for t in threads:
        t.join()

    rospy.loginfo("Drawing complete. Digits: 0 1 6 7")
    rospy.loginfo("==================================")
    rospy.loginfo("Student ID: U2210167")
    rospy.loginfo("===================================")
    rospy.spin()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass