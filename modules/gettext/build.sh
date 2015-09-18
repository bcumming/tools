wget http://ftp.gnu.org/pub/gnu/gettext/gettext-0.19.6.tar.gz
tar -xzf gettext-0.19.6.tar.gz
./configure --prefix=$HOME/tools/$SYSTEM
make -j 4
make install
cd ..

