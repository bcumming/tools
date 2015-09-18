wget http://ftp.gnu.org/gnu/automake/automake-1.15.tar.gz
tar -xzf automake-1.15.tar.gz
cd automake-1.15
./bootstrap.sh
./configure --prefix=$HOME/tools/$SYSTEM
make
make install
cd ..

