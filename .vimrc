"=========================================================================
" Abhijit's .vimrc file
"=========================================================================

" Status Line {  
    set laststatus=2                             	" always show statusbar  
	set statusline=  
	set statusline+=buf:%-10.3n\                   	" buffer number  
"	set statusline+=%f\                          	" filename with path  
	set statusline+=%t\                          	" only filename   
	set statusline+=%h%m%r%w                     	" status flags  
	set statusline+=\[%{strlen(&ft)?&ft:'none'}] 	" file type  
    set statusline+=\ :\ %.50F 				                " right align remainder  
    set statusline+=%= 				                " right align remainder  
	set statusline+=0x%-8B 				            " character value  
	set statusline+=%-14(%l,%c%V%) 			        " line, character  
	set statusline+=%<%P 			            	" file position  
"} 


"--------------------
" GENERAL
"--------------------
syntax on                   " syntax highlighting
set textwidth=100
set nobackup                " get rid of annoying ~file
set hidden          		" hidden buffers, you can switch buffers without saving previous
" set viminfo^=%		        " save buffer list
set nowrap		            " no word wrap
set mouse=a		            " allow mouse click to set cursor position
set autoread		        " automatically read/refresh file changed by another program
" set autochdir               " automatically change directory to the active file
set nocscopeverbose
" CDC = Change to Directory of Current file
" command CDC cd %:p:h

" Tab stop settings
set tabstop=4 softtabstop=4 shiftwidth=4 smarttab expandtab  
" Use 256 color mode
set t_Co=256

" Indenting
set autoindent              " auto indenting
set smartindent
filetype on
filetype plugin on
filetype indent on

" Press <leader>n sequence to toggle line numbers
nmap <leader>n :set invnumber<CR>
highlight LineNr ctermfg=grey
set number
" Press the <leader>q sequence to exit current buffer without saving changes
nmap <leader>q :bd!<CR>
" Press the <leader>c sequence to close current tab
nmap <leader>c :tabclose<CR>
" Press the <leader>w sequence to Toggle word wrap
nmap <leader>w :set wrap!<cr>
" Press the <leader>c sequence to Toggle cursor line selection
" nnoremap <leader>c :set cursorline!<cr>
" Press the <leader>f sequence to Copy the complete file path
nnoremap <leader>f :let @" = expand("%:p")<cr>

" CTRL-A to comment out selected region by #
vnoremap <c-a> :s/^/# / <cr>
" CTRL-SHIFT-A to uncomment selected region by #
vnoremap <c-s-a> :s/^# // <cr>

" Create swapfiles in following directory
set directory=~/.vim/swapfiles//

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
nnoremap <leader>hl :set invhlsearch<CR>


" Ignore these files when completing names and in Explorer
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

"Search for tags in this dir and above
" set tags=./TAGS,./tags,~/validation/XLF/tags,/workspace/hw/akulkar/validation/temp/HQM_local/ncp_wrl-x86_64_rte_bin_1_4_0_003_4/ncp_rte/src/tags
set tags+=tags;/workspace/hw/
" /workspace/hw/akulkar/validation/temp/ncp_wrl-x86_64_xlf_rte_bin_1_4_0_001_5/ncp_rte/src/tags
" ~/validation/AXX5600/tags;

"--------------------
" PLUGINS
"--------------------
" Taglist plugin variable setting
let Tlist_Inc_Winwidth=0
let Tlist_Show_One_File=1
nnoremap <F2> :TlistToggle<CR>

" Bufexplorer key mappings override
noremap <silent> <F11> :BufExplorer<CR>

" Tabline color settings
set tabpagemax=15
hi TabLineFill ctermfg=LightBlue ctermbg=LightGray
hi TabLine ctermfg=black ctermbg=LightGray
hi TabLineSel ctermfg=white ctermbg=darkBlue

colorscheme vendetta
