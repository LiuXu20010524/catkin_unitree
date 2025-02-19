#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/liu_xu/liuxu_Documents/catkin_unitree/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/liu_xu/liuxu_Documents/catkin_unitree/install/lib/python3/dist-packages:/home/liu_xu/liuxu_Documents/catkin_unitree/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/liu_xu/liuxu_Documents/catkin_unitree/build" \
    "/home/liu_xu/anaconda3/envs/main_use/bin/python3" \
    "/home/liu_xu/liuxu_Documents/catkin_unitree/src/rl_l2gar/setup.py" \
    egg_info --egg-base /home/liu_xu/liuxu_Documents/catkin_unitree/build/rl_l2gar \
    build --build-base "/home/liu_xu/liuxu_Documents/catkin_unitree/build/rl_l2gar" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/liu_xu/liuxu_Documents/catkin_unitree/install" --install-scripts="/home/liu_xu/liuxu_Documents/catkin_unitree/install/bin"
