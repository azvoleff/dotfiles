" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------
"
"  https://github.com/captbaritone/dotfiles/blob/master/vim/plug.vim

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'altercation/vim-colors-solarized'

" Syntax
Plug 'tpope/vim-git', { 'for': 'git' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

" Completion
Plug 'mattn/emmet-vim', { 'for': 'html' }

" Make % match xml tags
Plug 'edsono/vim-matchit', { 'for': ['html', 'xml'] }

Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic', { 'for': ['php', 'python', 'javascript', 'css'] }
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-scripts/pythonhelper'
Plug 'mbbill/undotree'
Plug 'jalvesaq/Nvim-R'
Plug 'vim-scripts/ShowMarks'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Other plugins require curl
if executable("curl")
    " Webapi: Dependency of Gist-vim
    Plug 'mattn/webapi-vim'

    " Gist: Post text to gist.github
    Plug 'mattn/gist-vim'
endif

filetype plugin indent on                   " required!
call plug#end()
