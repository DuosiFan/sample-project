# sample-project
Sample scientific computing project

## install fftw3
CC=clang ./configure --prefix=$HOME/tools/fftw3-3.3.10 --enable-shared
make
make install

## Shared library
### How to find if a library is installed via the package manager
For example, the FFTW3 library
---------------------------------------------------------------
ldconfig -p | grep libfftw3
---------------------------------------------------------------

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

## Useful emacs commands
C-u M-!: execute a shell command and redirect the output to current buffer

## Setup a development enviroment in a fresh installed ubuntu 22.04 (use apt not snap)
  1. essential FOSS packages to install (use apt install): git, clang (with --install-suggests), clang-tools (clang-check), clang-format
  2. configure git locally and connect github
  
  
  Some tips of apt
      * apt -s install <package name>: simulate the install but do nothing
