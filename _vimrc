execute pathogen#infect()

set encoding=utf-8
set nocompatible                  " Must come first because it changes other options.
set mouse=a

syntax enable                     " Turn on syntax highlighting.

set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs
set softtabstop=2                 " Makes the spaces feel like real tabs

set autoindent
set backspace=indent,eol,start    " Intuitive backspacing.
filetype on
filetype plugin on
filetype indent on

set showmatch
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.scssc,*.sassc

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set noswapfile                    " And again.:

set laststatus=2                  " Show the status line all the time
set listchars=tab:▸\ ,eol:¬


set t_Co=256
set background=dark
colorscheme evolution
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

let mapleader=","
:command WQ wq
:command Wq wq
:command W w
:command Q q

let g:bufferline_echo = 0         " Don't print bufferline bar
let g:mustache_abbreviations = 1

" Indent guides
let g:indent_guides_start_level = 4
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#cccccc ctermbg=238
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#999999 ctermbg=238

" Better whitespace
autocmd BufWritePre * StripWhitespace

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
set cursorline

" store all swap files in the same place
set dir=~/.vim/backup

"see spaces
set list

"bufferline
let g:bufferline_echo = 0
  autocmd VimEnter *
    \ let &statusline='%{bufferline#refresh_status()}'
    \ .bufferline#get_status_string()


"bbye
:nnoremap <Leader>q :Bdelete<CR>
:nnoremap <Leader>qa :bufdo :Bdelete<CR>

" Easier navigation between split windows
:nnoremap <c-j> <c-w>j
:nnoremap <c-k> <c-w>k
:nnoremap <c-h> <c-w>h
:nnoremap <c-l> <c-w>l

" indent
" nmap <Left> <<
" nmap <Right> >>
vmap <Left> <gv
vmap <Right> >gv

" move up/down
" map <Up> :m .-2<CR>==
" map <Down> :m .+1<CR>==


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']

" Creating a mapping to turn it on and off:
map <leader>l :RainbowLevelsToggle<cr>
let g:rainbow_levels = [
    \{'ctermbg': 232, 'guibg': '#080808'},
    \{'ctermbg': 233, 'guibg': '#121212'},
    \{'ctermbg': 234, 'guibg': '#1c1c1c'},
    \{'ctermbg': 235, 'guibg': '#262626'},
    \{'ctermbg': 222, 'guibg': '#ffd787'},
    \{'ctermbg': 9,   'guibg': '#cc7833'},
    \{'ctermbg': 1,   'guibg': '#da4939'},
    \{'ctermbg': 160, 'guibg': '#870000'},
    \{'ctermbg': 160, 'guibg': '#870000'},
    \{'ctermbg': 160, 'guibg': '#870000'},
    \{'ctermbg': 160, 'guibg': '#870000'},
    \{'ctermbg': 160, 'guibg': '#870000'},
    \{'ctermbg': 160, 'guibg': '#870000'}]
