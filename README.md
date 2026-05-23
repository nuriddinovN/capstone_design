# Capstone Design - ROS Robotics Project

A comprehensive Robot Operating System (ROS) project containing multiple robotics packages and implementations for capstone design coursework. This workspace includes robotics simulation, motion planning, navigation, and robot control components built with ROS Noetic.

## Project Overview

This is an educational robotics project developed as part of a capstone design course. It leverages the ROS ecosystem to create modular, reusable robotics components including robot simulation, navigation systems, and custom message/service definitions for robotic systems.

## Directory Structure

```
capstone_design/
├── src/                          # ROS source packages
│   ├── my_robot_pkg/             # Main robot package with custom messages and actions
│   ├── hw2_u167/                 # Homework assignment 2 - Navigation and motion control
│   ├── hw2_U2010167/             # Alternative implementation of homework 2
│   └── [other packages]/
├── build/                        # CMake build directory (generated)
├── devel/                        # Development space with built artifacts
├── hw1_video/                    # Homework 1 - Video/media resources
└── README.md                     # This file
```

## Language Composition

- **Makefile** (34.2%) - Build system automation
- **Python** (19.9%) - ROS nodes and scripting
- **CMake** (16%) - Cross-platform build configuration
- **Common Lisp** (11.5%) - ROS EusLisp integration
- **C++** (8.2%) - Performance-critical components
- **JavaScript** (4.4%) - Visualization and web tools
- **Other** (5.8%) - Configuration and documentation files

## Key Packages

### `my_robot_pkg`
The main robot package featuring:
- **Custom Messages**: `RobotStatus.msg` - Status information for the robot
- **Custom Services**: 
  - `AddTwoInts.srv` - Basic service example
  - `TemperatureConverter.srv` - Unit conversion service
- **Custom Actions**: `Navigate.action` - Navigation action for goal-based movement
- Dependencies: rospy, actionlib, geometry_msgs, std_msgs

### `hw2_u167` & `hw2_U2010167`
Navigation and motion control packages featuring:
- Navigation stack integration
- Geometry message handling
- Transform (TF) framework usage
- ROS topic publishers and subscribers
- Dependencies: geometry_msgs, nav_msgs, rospy, tf

## Features

✅ **ROS Integration** - Full ROS Noetic compatibility  
✅ **Modular Architecture** - Multiple specialized packages  
✅ **Custom Messages/Services** - Domain-specific communication protocols  
✅ **Action Framework** - Goal-oriented task management  
✅ **Navigation Support** - Built-in navigation stack components  
✅ **Multi-Language Support** - Python, C++, and Lisp implementations  
✅ **Build Automation** - CMake and Makefile-based builds  

## Requirements

- **OS**: Ubuntu 20.04 LTS (compatible with ROS Noetic)
- **ROS Distribution**: ROS Noetic Ninjemys
- **Build Tools**: CMake 3.16+, catkin, Make
- **Python**: Python 3.6+ (for Python nodes)
- **C++ Compiler**: GCC 9.4.0 or compatible

## Installation & Setup

### 1. Install ROS Noetic
Follow the official [ROS Noetic installation guide](http://wiki.ros.org/noetic/Installation/Ubuntu).

### 2. Create Catkin Workspace (if not already done)
```bash
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws
catkin_init_workspace src
```

### 3. Clone the Repository
```bash
cd ~/catkin_ws/src
git clone https://github.com/nuriddinovN/capstone_design.git
cd ~/catkin_ws
```

### 4. Build the Project
```bash
catkin_make
source devel/setup.bash
```

### 5. Verify Installation
```bash
rospack list | grep -E "my_robot_pkg|hw2_u167"
```

## Usage

### Running ROS Master
```bash
roscore
```

### Launch Robot Nodes
Example: Running a navigation node from `hw2_u167`:
```bash
source ~/catkin_ws/devel/setup.bash
rosrun hw2_u167 [node_name]
```

### Publishing to Topics
```bash
rostopic pub /robot_status my_robot_pkg/RobotStatus "{status: 'moving', speed: 1.5}"
```

### Calling Services
```bash
rosservice call /temperature_converter '{celsius: 100}'
```

### Navigation Actions
```bash
rostopic pub /navigate_goal my_robot_pkg/NavigateActionGoal "goal: {target_x: 10, target_y: 5}"
```

## Message Definitions

### RobotStatus.msg
Status information published by the robot:
- `status`: Current robot state (moving, idle, error)
- `speed`: Current linear velocity
- `heading`: Current heading angle

### Services

**AddTwoInts.srv** - Arithmetic operation
```
int64 a
int64 b
---
int64 sum
```

**TemperatureConverter.srv** - Unit conversion
```
float64 celsius
---
float64 fahrenheit
```

### Actions

**Navigate.action** - Goal-based navigation
```
# Goal
float32 target_x
float32 target_y
---
# Result
bool success
float32 final_distance
---
# Feedback
float32 current_distance
float32 progress_percentage
```

## Build System

The project uses a standard ROS catkin build system:

- **Primary Build Tool**: `catkin_make`
- **Configuration**: CMakeLists.txt in each package
- **Dependency Management**: package.xml manifests
- **Build Output**: Artifacts in `build/` and `devel/` directories

### Clean Build
```bash
cd ~/catkin_ws
catkin_make clean
catkin_make
```

## Development

### Adding New Packages
```bash
cd ~/catkin_ws/src
catkin_create_pkg my_new_package rospy roscpp std_msgs
```

### Custom Messages/Services/Actions
1. Add `.msg`, `.srv`, or `.action` files to the respective directories
2. Update `CMakeLists.txt` to include message generation
3. Rebuild: `catkin_make`

## Documentation

- [ROS Wiki](http://wiki.ros.org/)
- [Catkin Documentation](http://wiki.ros.org/catkin)
- [ROS Tutorials](http://wiki.ros.org/ROS/Tutorials)
- [ROS Noetic Documentation](http://docs.ros.org/en/noetic/)

## Testing & Debugging

### View Active Nodes
```bash
rosnode list
```

### Monitor Topics
```bash
rostopic list
rostopic echo /topic_name
```

### Inspect Messages
```bash
rosmsg show my_robot_pkg/RobotStatus
```

### Debug with RViz
```bash
rosrun rviz rviz
```

## Project Status

- **Created**: March 12, 2026
- **Last Updated**: April 19, 2026
- **Status**: Active Development
- **License**: TBD

## Author

**Maintainer**: Noor (nuriddinovN)  
**Email**: noor@todo.todo

## Contributing

Contributions are welcome! Please follow ROS coding standards and ensure all packages build successfully with `catkin_make` before submitting pull requests.

## License

This project's license is pending finalization. For now, assume it follows ROS conventions.

## Support & Issues

For issues, questions, or feature requests, please open an issue on the [GitHub repository](https://github.com/nuriddinovN/capstone_design/issues).

---

**Note**: This project is part of capstone design coursework. Some packages and features may be under active development. Refer to individual package documentation for more details.
