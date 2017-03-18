Repository of docker images

See also https://hub.docker.com/u/gsauthof/ for the built images.

2016, Georg Sauthoff <mail@georg.so>


## Images

### fedora/cxx-devel

Layered on top of the official Fedora 25 image. Includes everything one needs
to compile a >= C++11 project that uses relatively recent version of Boost/Qt5/libxml2 etc.

Also includes:

- cmake, make, ninja
- bison, flex, ragel
- gcc + static analyzers, cmake

The entrypoint of the container is `/usr/bin/sleep infinity`, such that one can easily use
`docker exec` to execute build scripts. See https://github.com/gsauthof/tree-model/blob/master/.travis.yml for an example.

### fedora/cxx-runtime

Based on Fedora 25, contains all runtime dependencies to run unittests of a C++/Boost/Qt5 project.

For executing GUI unittests in a headless environment, it contains Xvfb, the
virtual framebuffer X server. That X server is the entrypoint of the container.

### fedora/mingw64-devel

Based on Fedora 23, contains everything to cross-compile a C/C++/Boost/Qt5 project to Windows (64 bit).

### fedora/mingw64-runtime

Based on Fedora, contains everything to run console based windows binaries (64 bit) under wine.


## Automated Builds

The docker images available at https://hub.docker.com/u/gsauthof/ are automatically
created when something is pushed to this github repository.

Besides simplifying the deployment this should also increase the transparency of the
created binary images.

Note that until 2016-04-03, the cxx-devel/runtime images were published as
standard docker repositories. Not as automated builds. On 2016-04-03 those old
repositories were deleted and replaced with automate build repositories that
have the same names.
