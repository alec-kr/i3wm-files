" Author - Alec Ramdhan
" Title - My .vimrc file

" Sidebar - NERDTree.vim - https://github.com/preservim/nerdtree
" Status bar - lightline.vim - https://github.com/itchyny/lightline.vim
" Extra Packages - 

" --------------- (Developer Notes) ---------------
" 1: Implement rainbow brackets
" 2: Check out Tilix themes - https://github.com/storm119/Tilix-Themes

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
