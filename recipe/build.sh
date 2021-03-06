#!/bin/bash

export C_INCLUDE_PATH=${PREFIX}/include
export LIBRARY_PATH=${PREFIX}/lib

make
mkdir -p $PREFIX/lib
mkdir -p $PREFIX/include

# Note to the wise: we're just copying over the library part of libdeflate
# Excluding the "gzip" replacements, which would clobber the traditional zlib packages if installed.
mv libdeflate.h $PREFIX/include/
cp libdeflate.* $PREFIX/lib/
