wget http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz
tar -xzf autoconf-2.69.tar.gz
rm autoconf-2.69.tar.gz
cd autoconf-2.69
./configure --prefix=$HOME/tools/$SYSTEM
make
make install
cd ..

