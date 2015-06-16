# installation paths

Because the home path is shared over multiple systems, I install in

    $HOME/tools/$SYSTEM

where ```$SYSTEM``` is the name of the target system (santis, daint, etc...)

```.bashrc``` has to set the ```$PATH``` appropriately by detecting the system when logging in

    --prefix=$HOME/tools/$SYSTEM

# vim

git submodule add git@github.com:vim/vim.git modules/vim

guideline for building vim from scratch:

github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

    export SYSTEM=santis
    export TOOLS=$HOME/tools/$SYSTEM
    export VIMRUNTIMEDIR=$TOOLS/share/vim/vim74
    ./configure --with-features=huge --enable-multibyte --enable-pythoninterp --enable-cscope --prefix=$TOOLS
    make install -j 4

This found python 2.6 and worked just fine

## YCM

On Cray systems the default compilers are the Cray wrappers (this is what the YCM installer will find). The installer inevitably fails when it uses the Cray compiler, so do the following before starting vim for the first time (so that when NeoBundle trys to install YCM the YCM installer will find the correct compiler)

    module load gcc
    export CC=`which gcc`
    export CXX=`which g++`

hmmmmm, this does the installation without any errors... but the YCM server fails to start

# Ag : silver searcher




