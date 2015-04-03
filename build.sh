set -e

if [ -z $VERSION ]; then
  VERSION="$1"
fi

mkdir -p out
cd out

wget https://github.com/erlang/otp/archive/OTP-${VERSION}.tar.gz
tar -xzmf OTP-${VERSION}.tar.gz
chmod -R 777 otp-OTP-${VERSION}

cd otp-OTP-${VERSION}
./otp_build autoconf
./configure --with-ssl --enable-dirty-schedulers
make
make release

cd ..
mv otp-OTP-${VERSION}/release/x86_64-unknown-linux-gnu/ OTP-${VERSION}

rm OTP-${VERSION}.tar.gz
tar -czf OTP-${VERSION}.tar.gz OTP-${VERSION}
