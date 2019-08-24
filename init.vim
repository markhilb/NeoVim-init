call plug#begin()
	Plug 'kien/ctrlp.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'octol/vim-cpp-enhanced-highlight'
	Plug 'jiangmiao/auto-pairs'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'rhysd/accelerated-jk'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'tpope/vim-commentary'
	Plug 'sheerun/vim-polyglot'
	Plug 'wellle/targets.vim'
	Plug 'justinmk/vim-syntax-extra'
call plug#end()

	
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set number relativenumber
set mouse=a
syntax on
colorscheme custom
"set t_Co=256
"highlight Normal ctermbg=black
"highlight Normal ctermfg=black
let g:deoplete#enable_at_startup = 1
packloadall
silent! helptags ALL


"Key bindings:
"
"
"ctr + l = unhighlight words
nnoremap <silent> <C-l> :nohl<CR><C-l>

"N = new tab
nnoremap E :tabedit<CR>

"tab = go to next tab
nnoremap <tab> :tabn<CR>

"shift + tab = go to previous tab
nnoremap <S-tab> :tabp<CR>

"shift + j = jump half page down
nnoremap <S-J> :+10<CR>

"shift + k = jump half page up
nnoremap <S-K> :-10<CR>

"Alt + j = move line down
nnoremap <A-j> :m.+1<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
inoremap <A-j> <Esc>:m .+1<CR>==gi

"Alt + k = move line up
nnoremap <A-k> :m.-2<CR>==
vnoremap <A-k> :m '<-2<CR>gv=gv
inoremap <A-k> <Esc>:m .-2<CR>==gi

"Alt + L = move letter to right
nnoremap L xp

"Alt + H = move letter to left
nnoremap H Xph

"Alt + l = word move to right
nnoremap <A-l> dawwPb

"Alt + h = move word to left
nnoremap <A-h> dawbPb

"; = execute previous command
nnoremap ; :<UP><CR>

"r + w = replace inner word
nnoremap rw viwp

"= = end of line (normal mode)
nnoremap = $

"Wrap selected inside:
vnoremap ( d<ESC>i()<ESC>P
vnoremap [ d<ESC>i[]<ESC>P
vnoremap { d<ESC>i{}<ESC>P
vnoremap " d<ESC>i""<ESC>P
vnoremap ' d<ESC>i''<ESC>P

" Ctr + t = open terminal in vim
nnoremap <C-t> :terminal<CR> i

"ctr + {number} = go to that tab (ctr + 0 goes to last tab)
function Tabber1()
	for i in range(0, 10)
		if i == 0
			let s:cmd = 'nnoremap <A-' . 0 . '> ' . 1 . 'gt \| :tabp<CR>'
		else
			let s:cmd = 'nnoremap <A-' . i . '> ' . i . 'gt'
		endif
		execute s:cmd
	endfor
endfunction

call Tabber1()


