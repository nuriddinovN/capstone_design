#!/usr/bin/env python3
"""
Digit Formation: 1 - 6 - 7
19 TurtleBot3 robots move from starting line (y=-5)
to form digits when viewed top-down.
"""

import rospy
import math
import threading
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion

# ── Target positions ─────────────────────────────────────────────────────────
#   Digit 1  (center x = -6.0)  — 6 robots
#   Digit 6  (center x =  0.0)  — 8 robots  (circle r=1.0, cy=1.0)
#   Digit 7  (center x =  6.0)  — 5 robots
# ─────────────────────────────────────────────────────────────────────────────
TARGETS = [
    # ── Digit 1 ──────────────────────────────
    (-6.2,  3.6),   # R0   hook
    (-6.0,  4.0),   # R1   top of spine
    (-6.0,  2.7),   # R2   upper spine
    (-6.0,  1.4),   # R3   mid spine
    (-6.0,  0.2),   # R4   lower spine
    (-6.5,  0.0),   # R5   base serif

    # ── Digit 6 ──────────────────────────────
    ( 1.0,  1.0),   # R6   circle right
    ( 0.5,  1.87),  # R7   circle upper-right
    (-0.5,  1.87),  # R8   circle upper-left
    (-1.0,  1.0),   # R9   circle left
    (-0.5,  0.13),  # R10  circle lower-left
    ( 0.5,  0.13),  # R11  circle lower-right
    (-0.8,  2.5),   # R12  tail lower
    (-0.4,  3.8),   # R13  tail upper

    # ── Digit 7 ──────────────────────────────
    ( 5.4,  4.0),   # R14  bar left
    ( 6.0,  4.0),   # R15  bar center
    ( 6.6,  4.0),   # R16  bar right
    ( 6.2,  2.7),   # R17  diagonal upper
    ( 5.8,  1.2),   # R18  diagonal lower
]

NUM_ROBOTS = len(TARGETS)   # 19

# Collision avoidance: group start delays
# Digit-1 robots (R0-R5)   start at t=0
# Digit-7 robots (R14-R18) start at t=5s  (far side, clear path)
# Digit-6 robots (R6-R13)  start at t=10s (middle, wait for others to clear)
GROUP_DELAYS = (
    [0.0]  * 6 +   # Digit 1
    [10.0] * 8 +   # Digit 6
    [5.0]  * 5     # Digit 7
)


class RobotController:
    def __init__(self, idx, target):
        self.idx   = idx
        self.ns    = f"tb3_{idx}"
        self.tx, self.ty = target
        self.x   = 0.0
        self.y   = 0.0
        self.yaw = 0.0
        self.odom_ok = False

        self.pub = rospy.Publisher(
            f"/{self.ns}/cmd_vel", Twist, queue_size=10)
        self.sub = rospy.Subscriber(
            f"/{self.ns}/odom", Odometry, self._odom_cb)

    def _odom_cb(self, msg):
        self.x = msg.pose.pose.position.x
        self.y = msg.pose.pose.position.y
        q = msg.pose.pose.orientation
        _, _, self.yaw = euler_from_quaternion([q.x, q.y, q.z, q.w])
        self.odom_ok = True

    def _normalize(self, angle):
        return (angle + math.pi) % (2 * math.pi) - math.pi

    def navigate(self, start_delay=0.0):
        rate = rospy.Rate(10)

        # Wait for delay
        rospy.sleep(start_delay)

        # Wait until odometry arrives
        timeout = rospy.Time.now() + rospy.Duration(15.0)
        while not self.odom_ok and not rospy.is_shutdown():
            if rospy.Time.now() > timeout:
                rospy.logwarn(f"[{self.ns}] No odom — skipping")
                return
            rate.sleep()

        rospy.loginfo(f"[{self.ns}] → target ({self.tx:.2f}, {self.ty:.2f})")

        while not rospy.is_shutdown():
            dx   = self.tx - self.x
            dy   = self.ty - self.y
            dist = math.hypot(dx, dy)

            if dist < 0.08:
                self._stop()
                rospy.loginfo(f"[{self.ns}] ✓ reached target")
                return

            target_angle = math.atan2(dy, dx)
            angle_err    = self._normalize(target_angle - self.yaw)

            cmd = Twist()
            if abs(angle_err) > 0.15:
                # Rotate in place
                cmd.angular.z = max(-2.0, min(2.0, 2.5 * angle_err))
                cmd.linear.x  = 0.0
            else:
                # Drive forward with gentle correction
                cmd.linear.x  = min(0.20, 0.4 * dist)
                cmd.angular.z = 1.2 * angle_err

            self.pub.publish(cmd)
            rate.sleep()

    def _stop(self):
        self.pub.publish(Twist())


def main():
    rospy.init_node("digit_formation_167", anonymous=False)
    rospy.loginfo("=== Digit Formation 1-6-7 | 19 robots ===")

    controllers = [RobotController(i, TARGETS[i]) for i in range(NUM_ROBOTS)]
    threads = []

    for i, ctrl in enumerate(controllers):
        t = threading.Thread(
            target=ctrl.navigate,
            args=(GROUP_DELAYS[i],),
            daemon=True
        )
        threads.append(t)

    rospy.loginfo("Launching all robots...")
    for t in threads:
        t.start()

    # Wait for all to finish (or ROS shutdown)
    for t in threads:
        t.join()

    rospy.loginfo("=== Formation complete! Switch to top-down view in Gazebo ===")


if __name__ == "__main__":
    main()
