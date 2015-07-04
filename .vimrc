"=========================================================================
" Abhijit's .vimrc file
"=========================================================================

" Status Line {  
        set laststatus=2                             	" always show statusbar  
	set statusline=  
	set statusline+=buf:%-10.3n\                   	" buffer number  
	set statusline+=%f\                          	" filename   
	set statusline+=%h%m%r%w                     	" status flags  
	set statusline+=\[%{strlen(&ft)?&ft:'none'}] 	" file type  
	set statusline+=%= 				" right align remainder  
	set statusline+=0x%-8B 				" character value  
	set statusline+=%-14(%l,%c%V%) 			" line, character  
	set statusline+=%<%P 				" file position  
"} 


"--------------------
" GENERAL
"--------------------
syntax on               " syntax highlighting
filetype indent on      " activates indenting for files
set textwidth=100
"set autoindent          " auto indenting
set nobackup            " get rid of annoying ~file
set hidden		" hidden buffers, you can switch buffers without saving previous

"Press C-X C-N sequence to toggle line numbers
nnoremap <C-X><C-N> :set invnumber<CR>
"Press C-X C-Q sequence to delete buffer without any changes to be saved
nnoremap <C-X><C-Q> :bd!<CR>


"--------------------
" SEARCH
"------------------
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
" Use incremental search
set incsearch 
" Highlight all occurances
set nohlsearch
" Key map to invert highlight
nnoremap <C-X><C-H> :set invhlsearch<CR>


"--------------------
" PLUGINS
"------------------

" Taglist plugin variable setting
"set Tlist_Inc_Winwidth=0
nnoremap <F2> :TlistToggle<CR>

