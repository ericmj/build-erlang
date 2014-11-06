docker rm -fv build-erlang-${2}
docker build -t build-erlang ubuntu-${1}
docker run -t -e "VERSION=${2}" --name=build-erlang-${2} build-erlang

docker cp build-erlang-${2}:/home/build/out/OTP-${2}.tar.gz ubuntu-${1}/out
