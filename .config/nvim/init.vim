" General settings
syntax on
set number
set ignorecase
set hlsearch
set encoding=utf-8
set cursorline

" Tab settings
set noexpandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" StatusLine
set laststatus=2
set statusline=
set statusline+=%#NonText#
set statusline+=\ %F\ %M\ %R
set statusline+=%=
set statusline+=\ %l:%c\ %Y\ %p%%

" Plugins
call plug#begin()
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'dense-analysis/ale'
call plug#end()

" Highlighting
hi CursorLine cterm=NONE ctermbg=DarkGray
hi LineNr ctermfg=LightBlue
hi CursorLineNr ctermfg=white

" Mappings
nmap <C-t> :tabnew<CR>
nmap <C-w> :tabclose<CR>
nmap <C-j> :tabprevious<CR>
nmap <C-k> :tabnext<CR>

map <C-l> :NERDTreeToggle<CR>

" ALE setup
let g:ale_linters = {
\	'python': ['flake8', 'pylint', 'pyright'],
\}

let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

autocmd FileType python set omnifunc=python3complete#Complete

" Keybinds
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
" Tabs
nnoremap <C-t> :tabnew<CR>
nnoremap <C-x> :tabclose<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

let g:currentmode = {
	\ 'i': 'INSERT',
	\ 'R': 'REPLACE',
	\ 'v': 'VISUAL',
	\ 'V': 'VISUAL LINE',
	\ 'n': 'NORMAL',
	\ 'c': 'CMD',
	\ "\<C-V>": 'VISUAL BLOCK'
	\ }

" Status Line Customisation
set laststatus=2
set statusline=
set statusline+=%#Visual#
set statusline+=\ %F
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %p%%
set statusline+=\ %l:%c

" Plugins
call plug#begin()
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
call plug#end()
