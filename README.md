# beginner_tutorials
ROS publisher/subscriber beginner tutorials
[![License: MIT](https://img.shields.io/badge/License-MIT-Default.svg)](https://opensource.org/licenses/MIT)


## Authors
[Charu Sharma](<https://github.com/Sharma117555448>) (UID 117555448)

# Overview
This is ROS publisher/subscriber beginner tutorials. Where a publisher named talker, publishes a message and the subscriber called, listener hears the message. The message type here is a string.

# Dependencies
Ubuntu 18.04

ROS Melodic

# Build
Steps to build
```
mkdir -p ~/beginner_tutorials/src
cd ~/beginner_tutorials/
catkin_make
source devel/setup.bash
cd src/
git clone https://github.com/Sharma117555448/beginner_tutorials
cd ~/beginner_tutorials/
catkin_make

```

# Run
Steps to run
## 1. Launch all nodes individually. Run roscore
```
cd ~/beginner_tutorials/
source ./devel/setup.bash
roscore
```
## 2. Run talker node (Open a new terminal)
```
cd ~/beginner_tutorials/
source ./devel/setup.bash
rosrun beginner_tutorials talker
```
## 3. Run listener node (Open a new terminal)
```
cd ~/beginner_tutorials/
source ./devel/setup.bash
rosrun beginner_tutorials listener
```
## 4. Generate the RQT graph
```
cd ~/beginner_tutorials/
source ./devel/setup.bash
rosrun rqt_graph rqt_graph
```

## 5. Run cppcheck
Results are stored in `./results/cppcheck.txt` 
```
cppcheck --enable=all --std=c++11 --suppress=missingIncludeSystem $( find . -name *.cpp | grep -vE -e "^./build/" -e "^./vendor/" -e "^./lib") > results/cppcheck.txt 2>&1
```

## 6. Run cpplint
Results are stored in `./results/cpplint.txt`
```
cpplint $( find . -name \*.hpp -or -name \*.cpp | grep -vE -e "^./build/" -e "^./vendor/" -e "^./docs/" -e "^./results" -e "^./lib/") > results/cpplint.txt 2>&1
```

# Reference
http://wiki.ros.org/