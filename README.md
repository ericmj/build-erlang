# Erlang builder

Builds an Erlang release for Heroku (Ubuntu 10.04).

## Usage

Build with `./build.sh VERSION` with `VERSION` being the OTP release, for
example `17.2`. It will generate a tarball `OTP-17.2.tar.gz` inside `out`.

If you want to use Docker to generate the release build with `./docker.sh
VERSION`.

For instructions on how to install release, read the section "Install using the
release target" on http://www.erlang.org/doc/installation_guide/INSTALL.html.
