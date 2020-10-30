" Author - Alec Ramdhan
" Title - My .vimrc file

" Sidebar - NERDTree.vim
" Status bar - lightline.vim
" Other packages - wombat256grf (Can replace default colorscheme)

" --------------- (Developer Notes) ---------------
" 1: Use 3024 Night theme in Tilix. (storm119's repo)
" 2:

"Add autoindentation
set autoindent

"Set dark background
set background=dark

"Set the colorscheme
colorscheme molokai

"Set termguicolors
set termguicolors

"Enable syntax highlighting
syntax on

"Number lines
set number

"used to add color to lightline.vim (bug solution)
set laststatus=2

"Do not show the modes in the default Vim status bar 
set noshowmode

"Autostart NERDTree when Vim launches
autocmd vimenter * NERDTree

"Close NERDTree if it is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Allow selecting windows by using the mouse
set mouse=a

"Let Backspace key function the way it does in a normal text editor
set nocp
set backspace=indent,eol,start
