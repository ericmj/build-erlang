docker rm -fv build-erlang-${1}
docker build -t build-erlang .
docker run -t -e "VERSION=${1}" --name=build-erlang-${1} build-erlang

docker cp build-erlang-${1}:/home/build/out/OTP-${1}.tar.gz out
