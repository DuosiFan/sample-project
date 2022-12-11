# sample-project
Sample scientific computing project

## install fftw3
CC=clang ./configure --prefix=$HOME/tools/fftw3-3.3.10 --enable-shared
make
make install

## Shared library

LD_DEBUG=<opts>

libs: display library search paths
reloc: display relocation processing
files: display progress for input file
symbols: display symbol table processing
bindings: display information about symbol binding
versions: display version dependencies
all: all previous options combined
statistics: display relocation statistics
unused: determined unused DSOs
help: display this help message and exit
