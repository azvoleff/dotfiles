git clone https://github.com/neovim/neovim.git ~/neovim
make -C ~/neovim CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX:PATH=$HOME/neovim" install
