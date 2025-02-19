/**********************************************************************
 Copyright (c) 2020-2023, Unitree Robotics.Co.Ltd. All rights reserved.
***********************************************************************/
#ifndef ENUMCLASS_H
#define ENUMCLASS_H

#include <iostream>
#include <sstream>

enum class CtrlPlatform{
    GAZEBO,
    REALROBOT,
};

enum class RobotType{
    A1,
    Go1
};

enum class UserCommand{ // 用户命令状态，包括无效状态，开始，停止，固定站立，被动，自由站立，move_base，平衡测试，摆动测试，步态测试
    // EXIT,
    NONE,
    START,      // trotting
    START_CUSTOM,   // 自定义的trotting
    L2_A,       // fixedStand
    L2_B,       // passive
    L2_X,       // freeStand
#ifdef COMPILE_WITH_MOVE_BASE
    L2_Y,       // move_base
#endif  // COMPILE_WITH_MOVE_BASE
    L1_X,       // balanceTest
    L1_A,       // swingTest
    L1_Y        // stepTest
};

enum class FrameType{
    BODY,
    HIP,
    GLOBAL
};

enum class WaveStatus{
    STANCE_ALL,
    SWING_ALL,
    WAVE_ALL
};

enum class FSMMode{
    NORMAL,
    CHANGE
};

enum class FSMStateName{
    // EXIT,
    INVALID, // 无效状态
    PASSIVE,
    FIXEDSTAND,
    FREESTAND,
    TROTTING,
    CUSTOM_TROTTING, // 自定义的trotting状态
#ifdef COMPILE_WITH_MOVE_BASE
    MOVE_BASE,       // move_base
#endif  // COMPILE_WITH_MOVE_BASE
    BALANCETEST,
    SWINGTEST,
    STEPTEST
};

#endif  // ENUMCLASS_H