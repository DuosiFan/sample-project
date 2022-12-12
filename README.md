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
1. essential FOSS packages to install (use apt install): git,
clang (with --install-suggests), clang-tools (clang-check), clang-format, xclip
2. configure git locally and connect github

   git config --global user.name "Duosi Fan"

   git config --global user.email "timothy12041053@gmail.com"

   ssh-keygen -t ed25519 -C "timothy12041053@gmail.com"

   eval "$(ssh-agent -s)"

   ssh-add ~/.ssh/id_ed25519

   cat ~/.ssh/id_ed25519.pub | xclip -selection clipboard	
      
  Some tips of apt
      * apt -s install <package name>: simulate the install but do nothing

3. use module to manage intel oneapi toolkits
  *  sudo apt install environment-modules
  *  add "source /etc/profile.d/modules.sh" to .bashrc
  *  execute modulefiles-setup.sh in root of oneapi installation
  *  add "export MODULEPATH=${MODULEPATH}:/home/duosifan/intel/oneapi/modulefiles" to .bashrc