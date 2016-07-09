export target_path=~/install

!!!!!! cmake 3.6

wget https://cmake.org/files/v3.6/cmake-3.6.0.tar.gz
tar -xzf cmake-3.6.0.tar.gz
cd cmake-3.6.0
./bootstrap --path=${target_path}
make install

!!!!!! curl 7.49.1

wget https://curl.haxx.se/download/curl-7.49.1.tar.gz
tar -xzf curl-7.49.1.tar.gz
cd curl-7.49.1/
./configure --prefix=${target_path}
make -j install

!!!!!! zlib 1.2.8

wget http://zlib.net/zlib-1.2.8.tar.gz
tar -xzvf zlib-1.2.8.tar.gz
cd zlib-1.2.8/
./configure --prefix=${target_path}
make -j install

!!!!!! libssh master

wget https://git.libssh.org/projects/libssh.git/snapshot/master.tar.gz
tar -xzf master.tar.gz
mv master libssh
cd libssh
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=${target_path} -DCMAKE_BUILD_TYPE=Release ..
make -j
make install

!!!!!! git master

wget https://github.com/git/git/archive/master.zip
unzip master.zip
cd git-master
make configure
./configure --prefix=${target_path}
make install
