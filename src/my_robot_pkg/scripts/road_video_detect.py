
import cv2
import numpy as np

VIDEO_PATH   = "/home/noor/Downloads/Driving_Along_An_Empty_Road___Royalty_Free_4K_Stock_Video_Footage.mp4"
OUTPUT_PATH  = "/home/noor/Downloads/output.mp4"
DISPLAY_SIZE = (800, 450)

# ── ROI: only near road (bottom portion) ──
ROI_TOP_Y          = 0.65   # how far ahead to look (higher = closer to car)
ROI_TOP_LEFT_X     = 0.38
ROI_TOP_RIGHT_X    = 0.62
ROI_BOTTOM_LEFT_X  = 0.10
ROI_BOTTOM_RIGHT_X = 0.90
ROI_BOTTOM_Y       = 0.98
# ──────────────────────────────────────────


def get_roi_mask(frame):
    h, w = frame.shape[:2]
    pts = np.array([[
        (int(w * ROI_BOTTOM_LEFT_X),  int(h * ROI_BOTTOM_Y)),
        (int(w * ROI_TOP_LEFT_X),     int(h * ROI_TOP_Y)),
        (int(w * ROI_TOP_RIGHT_X),    int(h * ROI_TOP_Y)),
        (int(w * ROI_BOTTOM_RIGHT_X), int(h * ROI_BOTTOM_Y)),
    ]], dtype=np.int32)
    mask = np.zeros((h, w), dtype=np.uint8)
    cv2.fillPoly(mask, pts, 255)
    return mask, pts


def detect_edges(frame):
    blurred  = cv2.GaussianBlur(frame, (9, 9), 0)
    gray     = cv2.cvtColor(blurred, cv2.COLOR_BGR2GRAY)
    canny    = cv2.Canny(gray, 50, 150)
    roi_mask, roi_pts = get_roi_mask(frame)
    masked   = cv2.bitwise_and(canny, canny, mask=roi_mask)
    return masked, roi_pts


def longest_line(lines_group):
    """Return only the single longest line from a group."""
    if not lines_group:
        return None
    def length(l):
        return np.sqrt((l[2]-l[0])**2 + (l[3]-l[1])**2)
    return max(lines_group, key=length)


def fit_to_roi(lines_group, y_bottom, y_top):
    """Fit a single averaged line extended to ROI top/bottom."""
    if not lines_group:
        return None
    pts = [(l[0], l[1]) for l in lines_group] + \
          [(l[2], l[3]) for l in lines_group]
    xs = [p[0] for p in pts]
    ys = [p[1] for p in pts]
    if len(set(ys)) < 2:
        return None
    coef = np.polyfit(ys, xs, 1)
    x1 = int(np.polyval(coef, y_bottom))
    x2 = int(np.polyval(coef, y_top))
    return (x1, y_bottom, x2, y_top)


def process_frame(frame):
    edges, roi_pts = detect_edges(frame)
    h, w = frame.shape[:2]
    mid_x = w // 2

    lines = cv2.HoughLinesP(
        edges,
        rho=1,
        theta=np.pi / 180,
        threshold=40,
        minLineLength=80,    # only long lines
        maxLineGap=100
    )

    left_lines, right_lines = [], []

    if lines is not None:
        for line in lines:
            x1, y1, x2, y2 = line[0]
            if x2 == x1:
                continue
            slope = (y2 - y1) / (x2 - x1)
            if abs(slope) < 0.4:   # skip near-horizontal
                continue
            if slope < 0 and x1 < mid_x:
                left_lines.append(line[0])
            elif slope > 0 and x1 > mid_x:
                right_lines.append(line[0])

    y_bottom = int(h * ROI_BOTTOM_Y)
    y_top    = int(h * ROI_TOP_Y)

    left_fit  = fit_to_roi(left_lines,  y_bottom, y_top)
    right_fit = fit_to_roi(right_lines, y_bottom, y_top)

    overlay = frame.copy()

    # Fill lane polygon
    if left_fit and right_fit:
        poly_pts = np.array([
            [left_fit[0],  left_fit[1]],
            [left_fit[2],  left_fit[3]],
            [right_fit[2], right_fit[3]],
            [right_fit[0], right_fit[1]],
        ], dtype=np.int32)
        cv2.fillPoly(overlay, [poly_pts], (0, 200, 0))
        frame = cv2.addWeighted(overlay, 0.25, frame, 0.75, 0)

    # Draw only the 2 main edge lines
    if left_fit:
        cv2.line(frame,
                 (left_fit[0], left_fit[1]),
                 (left_fit[2], left_fit[3]),
                 (0, 255, 0), 5)

    if right_fit:
        cv2.line(frame,
                 (right_fit[0], right_fit[1]),
                 (right_fit[2], right_fit[3]),
                 (0, 255, 0), 5)

    # ROI boundary (dim)
    cv2.polylines(frame, roi_pts, True, (100, 100, 255), 1)

    cv2.putText(frame, "Road Edge Detection",
                (10, 30), cv2.FONT_HERSHEY_SIMPLEX,
                0.8, (0, 255, 255), 2)

    return frame


def process_video():
    cap = cv2.VideoCapture(VIDEO_PATH)
    if not cap.isOpened():
        print(f"Cannot open {VIDEO_PATH}")
        return

    fps = cap.get(cv2.CAP_PROP_FPS) or 30

    writer = cv2.VideoWriter(
        OUTPUT_PATH,
        cv2.VideoWriter_fourcc(*'mp4v'),
        fps, DISPLAY_SIZE
    )

    print("Processing... 'q' quit | 'p' pause")
    paused = False

    while True:
        if not paused:
            ret, frame = cap.read()
            if not ret:
                break

            result = process_frame(frame)
            result = cv2.resize(result, DISPLAY_SIZE)

            writer.write(result)
            cv2.imshow("Road Edge Detection", result)

        key = cv2.waitKey(1) & 0xFF
        if key == ord('q'):
            break
        elif key == ord('p'):
            paused = not paused

    cap.release()
    writer.release()
    cv2.destroyAllWindows()
    print(f"Saved → {OUTPUT_PATH}")


if __name__ == '__main__':
    process_video()

