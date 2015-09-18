wget http://tukaani.org/xz/xz-5.0.8.tar.gz
tar -xzf xz-5.0.8.tar.gz
cd xz-5.0.8/
./autgen.sh
./configure --prefix=$HOME/tools/$SYSTEM
make -j 4
make install
cd ..

