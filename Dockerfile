FROM gradescope/autograder-base:ubuntu-jammy

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get clean all -y
RUN apt-get update -y &&\
apt-get install -y\
    build-essential\
    cmake\
    gdb\
    dos2unix\
    neovim\
    golang\
    python3

COPY src /autograder/src
COPY run_autograder /autograder/run_autograder
