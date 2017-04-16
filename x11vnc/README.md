Run x11vnc in a docker container while giving access to X11 that runs outside of the container.

# Usage

    export DISPLAY=:0
    xhost +SI:localuser:root
    docker run --rm -it \
        -p 5900:5900 \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        --ipc=host -v /etc/localtime:/etc/localtime:ro
        volkerfr/x11vnc
