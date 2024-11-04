# export BOOST_ROOT=/opt/homebrew/Cellar/boost/1.86.0_1
# export PNG_ROOT=/opt/homebrew/Cellar/libpng/1.6.44
# export BOOST_INCLUDEDIR=$BOOST_ROOT/include
# export PNG_INCLUDEDIR=$PNG_ROOT/include
# export BOOST_LIBRARYDIR=$BOOST_ROOT/lib
# export PNG_LIBRARYDIR=$PNG_ROOT/lib
export MACHTYPE=$(uname -m)
# export CFLAGS="-D_STATIC -I/usr/include -I$BOOST_INCLUDEDIR -I$PNG_INCLUDEDIR"
# export LDFLAGS="-L$BOOST_LIBRARYDIR -L$PNG_LIBRARYDIR -lpng -lregex"
export HOME=${PREFIX}
mkdir -pv bin/${MACHTYPE}
mkdir -pv lib/${MACHTYPE}
# (cd src/lib && make CC=/opt/homebrew/opt/gcc/bin/gcc-14 CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS")
# (cd src/jkOwnLib && make CC=/opt/homebrew/opt/gcc/bin/gcc-14 CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS")
# (cd src/blat && make CC=/opt/homebrew/opt/gcc/bin/gcc-14 CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS")
cp bin/blat ${PREFIX}/bin
# rm -rf ${PREFIX}/bin/${MACHTYPE}