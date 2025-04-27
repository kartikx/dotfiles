call plug#begin()
    Plug 'junegunn/goyo.vim'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-commentary'

    "Color-schemes
    Plug 'morhetz/gruvbox'
    Plug 'joshdick/onedark.vim'
    Plug 'EdenEast/nightfox.nvim'
call plug#end()

filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noruler
set number relativenumber
set clipboard=unnamed
autocmd BufRead,BufWritePre *.sh normal gg=G

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" appearance
set background=light
colorscheme dayfox 
hi Normal ctermbg=None

" keybinds
if has('macunix')
  nnoremap <D-c> "+y
  inoremap <D-c> <Esc>"+y
  vnoremap <D-c> "+y
  nnoremap <D-s> :w<CR>
  inoremap <D-s> <Esc>:w<CR>a
  vnoremap <D-s> :w<CR>
endif
