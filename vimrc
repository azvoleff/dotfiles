set t_Co=256

syn on
filetype indent plugin on
set spell
set autochdir

" Install the Plug plugin manager
source $HOME/.vim/plug.vim

" Make the sign column darker to match the rest of the colorscheme
highlight SignColumn ctermbg=11

"let g:solarized_termcolors=256

syntax enable
syntax sync fromstart
set background=dark
colorscheme solarized

nnoremap <silent> <F2> :TlistToggle<CR>
"set guifont=Lucida\ Sans\ Typewriter\ 12
set guifont=Consolas:h11:cANSI

set number

" For those quick fingers, which can't release the shift key.
nmap :W :w
nmap :Q :q
nmap :Ed :ed

au GUIEnter * set vb t_vb=

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0

"let g:riv_highlight_code = 'vim,cpp,c,py,rb,lua,pl,r'

"let g:NERDTreeDirArrows = 1

"let g:ConqueTerm_CWInsert = 1
"let g:ConqueTerm_ReadUnfocused = 1

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent

set nohlsearch

set wildmenu
set guioptions-=T
set guioptions-=m

set foldmethod=syntax

" Formatting and line options:
" set linewrapping to wrap without breaking words (good for latex)
set formatoptions=awcroql
set wrap
set linebreak
"set nowrap 
set textwidth=79
" show the line breaks with a '>'
set showbreak=

" * User Interface
" always display the statusline
set laststatus=2

function MySTL()
    if has("statusline")
        hi User1 term=standout ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
        let stlbeg = '%<%f  %([%{Tlist_Get_Tagname_By_Line()}]%) %h%m%r%='
        if exists("*CSV_WCol")
            let csv = '%1*%{&ft=~"csv" ? CSV_WCol("Name") . " " . CSV_WCol() : ""}%* '
        else
            let csv = ''
        endif
        let stlend = '%l,%c%V %P'
        return stlbeg.csv.stlend
    endif
endfunc
set stl=%!MySTL()

" enable VCS support
"let g:VCSCommandEnableBufferSetup = 1
"let g:VCSCommandDeleteOnHide = 1
let g:Tlist_Process_File_Always= 1
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_File_Fold_Auto_Close = 1
let g:Tlist_Use_Right_Window = 1

" statusline using vcscommand
"set statusline=%<%f\ %{VCSCommandGetStatusLine()}\ %h%m%r%=%l,%c%V\ %P
"set statusline=%<%f\ %{VCSCommandGetStatusLine()}\ 
"%([%{Tlist_Get_Tagname_By_Line()}]%)\ %h%m%r%=%l,%c%V\ %P


" Statusline without vcscommand
"set statusline=%<%f\ \ %([%{Tlist_Get_Tagname_By_Line()}]%)\ %h%m%r%=%l,%c%V\ 
"%P
"
" regular statusline
"set statusline=%<%f\ \ %h%m%r%=%l,%c%V\ %P

" variable to point to the location of the exuberant ctags - note the double 
" quotes to escape the spaces in the path to ctags.exe
" setup printing options
set printoptions=number:y,syntax:n,paper:letter,left:9pc,right:9pc,top:9pc,bottom:9pc
" print header using vcscommand
set pheader=%<%f\ %{VCSCommandGetStatusLine()}\ %h%m%=%-55.55(Printed\ %{CurTime()}%)\ Page\ %N
" regular print header
"set pheader=%<%f\ \ %h%m%=%-55.55(Printed\ %{CurTime()}%)\ Page\ %N

" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full

" have the mouse enabled all the time:
set mouse=a
set ttymouse=xterm2

" * Text Formatting -- General
" display line numbers along left side of window
set number

" * Text Formatting -- Specific File Formats
" support git syntax highlighting
autocmd BufNewFile,BufRead COMMIT_EDITMSG set filetype=gitcommit
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd BufNewFile,BufRead COMMIT_EDITMSG set formatoptions=tawroql

autocmd BufNewFile,BufRead *.bug set filetype=bugs
autocmd BufNewFile,BufRead *.stan set filetype=stan

" * Search & Replace
" make searches case-insensitive, unless they contain upper-case letters:
set ignorecase
set smartcase
" show the `best match so far' as search strings are typed:
set incsearch
" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

" * Keystrokes -- Moving Around
" use <Ctrl>+N/<Ctrl>+P to cycle through files:
nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>
" [<Ctrl>+N by default is like j, and <Ctrl>+P like k.]

" * Keystrokes -- Toggles
nnoremap <F1> :NERDTreeToggle<CR>
" Keystrokes to toggle options are defined here.  They are all set to normal
" mode keystrokes beginning \t but some function keys (which won't work in all
" terminals) are also mapped.

" have \th ("toggle highlight") toggle highlighting of search matches, and
" report the change:
nnoremap \th :set invhls hls?<CR>

" * Keystrokes -- Insert Mode
" allow <BkSpc> to delete line breaks, beyond the start of the current
" insertion, and over indentations:
set backspace=eol,start,indent

" have <Tab> (and <Shift>+<Tab> where it works) change the level of
" indentation:
inoremap <Tab> <C-T>
inoremap <S-Tab> <C-D>
" [<Ctrl>+V <Tab> still inserts an actual tab character.]


" NERDTREE options
"let NERDTreeIgnore=['\~$', '\.pyc$']

" R plugin terminal options
let R_assign = 2
"let vimrplugin_conquevsplit = 1
"let vimrplugin_sleeptime = 0.1
"let vimrplugin_rst2pdfargs = "options='-s borland -s C:/Users/azvoleff/.rst2pdf/styles/rrst.style --config=C:/Users/azvoleff/.rst2pdf/config'"
"let vimrplugin_rst2pdfargs = "options='-s borland'"
"let vimrplugin_rrstcompiler = 'rst2pdf'
"let vimrplugin_rst2pdfpath = 'C:/Python27/Scripts/rst2pdf.exe'

let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
highlight ShowMarksHLl ctermfg=white ctermbg=grey

let g:voom_ft_modes = {'rrst': 'rest'}

fu! FileTime()
    let ext=tolower(expand("%:e"))
    let fname=tolower(expand('%<'))
    let filename=fname . '.' . ext
    let msg=""
    let msg=msg." ".strftime("(Modified %B %d, %Y at %I:%M%P)",getftime(filename))
    return msg
endf

fu! CurTime()
    let ftime=""
    let ftime=ftime." ".strftime("%B %d, %Y at %I:%M%P")
    return ftime
endf fu!

set nocompatible
" Press the space bar to send lines (in Normal mode) and selections to R:
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
