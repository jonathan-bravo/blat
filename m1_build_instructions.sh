brew install gcc
brew install boost
brew install libpng

BOOST_ROOT=/opt/homebrew/Cellar/boost/1.86.0_1
PNG_ROOT=/opt/homebrew/Cellar/libpng/1.6.44

BOOST_INCLUDEDIR=$BOOST_ROOT/include
PNG_INCLUDEDIR=$PNG_ROOT/include

BOOST_LIBRARYDIR=$BOOST_ROOT/lib
PNG_LIBRARYDIR=$PNG_ROOT/lib

#CFLAGS="-static -static-libgcc -D_STATIC -I$BOOST_INCLUDEDIR"

CFLAGS="-D_STATIC -I/usr/include -I$BOOST_INCLUDEDIR -I$PNG_INCLUDEDIR"

LDFLAGS="-L$BOOST_LIBRARYDIR -L$PNG_LIBRARYDIR -lpng -lregex"

make CC=/opt/homebrew/opt/gcc/bin/gcc-14 CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS"