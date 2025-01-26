ARG ROCKY_VERSION=9
FROM rockylinux:${ROCKY_VERSION}

ARG ROCKY_VERSION=9

RUN dnf install -y epel-release \
    && dnf install -y \
        git \
        pykickstart \
        livecd-tools \
    && dnf clean all

RUN git clone \
    --branch r${ROCKY_VERSION} \
    --single-branch \
    https://github.com/rocky-linux/kickstarts.git \
    /usr/share/rocky-kickstarts
