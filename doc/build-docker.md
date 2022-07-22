Prerequisites
---------------------

* Install docker
* clone this repo

Build version
---------------------

* checkout the tag, etc you want to build

Build
---------------------

Currently the Berkeley DB code isn't getting included properly

	CONFIGURE_OPTS="--disable-wallet" ./build-docker/build.sh

`./build-docker/docker-env` runs a command in the docker build environment.
To rebuild without re-configuring, run

	./build-docker/docker-env make



Run
---------------------

The build output defaults to dynamically linked. The output files can be run from the docker-env:

	./build-docker/docker-run ./src/bitcoind -disablewallet


Build environemnt
-----------------

The docker build is equivalent to what is documented in doc/build-unix.md but it is performed in a docker container with supporting libraries pre-installed.

This build is designed for checking out the source code locally, choosing a commit, and making modifications (a development workflow), rather than for a ci/release workflow. The build is performed by mounting the bitcoin source into the container as a volume. Thus build artifacts are produced in the source tree and there are no modifications made to the docker image, which is only a temporary build environment.

The image currently uses an alpine image, but switching to a debian to follow doc/build-unix-md would make sense.

