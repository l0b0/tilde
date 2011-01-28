" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

if has("autocmd")
    " Jump to the last position when reopening a file
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif

    " Uncomment the following to have Vim load indentation rules according to the
    " detected filetype. Per default Debian Vim only load filetype specific
    " plugins.
    filetype indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd    	" Show (partial) command in status line.
set showmatch    	" Show matching brackets.
set ignorecase    	" Do case insensitive matching
set smartcase    	" Do smart case matching
set incsearch    	" Incremental search
set autowrite    	" Automatically save before commands like :next and :make
set hidden    	" Hide buffers when they are abandoned
"set mouse=a    	" Enable mouse usage (all modes) in terminals

" Backspace behaving as in other editors
set backspace=indent,eol,start

" Press F2 before pasting text to avoid crazy indentation
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O><F2>
set pastetoggle=<F2>

" Indentation/tabs
autocmd FileType * set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType make set tabstop=8|set shiftwidth=8|set noexpandtab

" Unicode
set encoding=utf-8
set fileencodings=
