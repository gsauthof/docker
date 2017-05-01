FROM fedora:25

MAINTAINER Georg Sauthoff <mail@georg.so>

RUN dnf -y install \
    bison \
    boost-devel \
    clang \
    cmake \
    findutils \
    flex \
    gcc \
    gcc-c++ \
    git \
    lcov \
    libasan \
    libasan-static \
    liblsan \
    liblsan-static \
    libtsan \
    libtsan-static \
    libubsan \
    libubsan-static \
    libxml2-devel \
    llvm \
    lua-devel \
    luajit-devel \
    make \
    meson \
    ninja-build \
    openssl-devel \
    procps-ng \
    python3-psutil \
    python3-pytest \
    qt5-qtbase-devel \
    qt5-qtsvg-devel \
    ragel \
  && dnf clean all

# mount points for mapping source code and
# build directories
RUN mkdir /srv/{src,build}

# on fedora should reliable get uid/gid 1000
RUN useradd -m compile-user
USER compile-user
WORKDIR /home/compile-user
ENTRYPOINT [ "/usr/bin/sleep"]
# default argument to entrypoint - possible values: 1h, 1d, inf, infinity, ...
CMD [ "infinity" ]
