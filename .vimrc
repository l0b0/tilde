" Not running Vi
set nocompatible

" Syntax highlighting
syntax on

" Command history
set history=1000

" If using a dark background within the editing area and syntax highlighting
set background=dark

" Jump to the last position when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

" Load indentation rules according to the detected filetype
filetype plugin indent on

" Show (partial) command in status line
set showcmd

" Show matching brackets.
set showmatch

" Do case insensitive matching
set ignorecase

" Do smart case matching
set smartcase

" Incremental search
set incsearch

" Automatically save before commands like :next and :make
set autowrite

" Hide buffers when they are abandoned
set hidden

" Backspace behaving as in other editors
set backspace=indent,eol,start

" Press F2 before pasting text to avoid crazy indentation
set pastetoggle=<F2>

" Indentation/tabs
set tabstop=4
set shiftwidth=4
set expandtab
autocmd FileType c set autoindent shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType eruby,ruby,yaml set autoindent shiftwidth=2 softtabstop=2 expandtab

" Switch between tabs and spaces for indentation
nmap <silent> <S-t> :set expandtab! | if &expandtab | retab | echo 'spaces' | else | retab! | echo 'tabs' | endif<CR>

" Highlight trailing whitespace characters
match Todo /\s\+$/

" Replace CR with LF
noremap <C-n> :%s/\r/\r/g <CR>

" Reformat current paragraph
noremap <C-f> gwap

" Sort words
command! -nargs=0 -range SortWords call VisualSortWords()

function! VisualSortWords()
    let rv = @"
    let rt = getregtype('"')
    try
        norm! gvy
        call setreg('"', join(sort(split(@")), ' '), visualmode()[0])
        norm! `>pgvd
    finally
        call setreg('"', rv, rt)
    endtry
endfunction

" Unicode
set encoding=utf-8

" Temporary files
set backupdir=~/.vimtmp,.
set directory=~/.vimtmp,.

" Load plugins
autocmd BufEnter * runtime plugin/adjust-tabstop.vim
