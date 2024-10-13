set number
set relativenumber
set autoindent
set mouse=a
set completeopt=noinsert,menuone,noselect
set cursorline
set title
set expandtab
set shiftwidth=4
set wildmenu
set guicursor=i:block

call plug#begin()

    Plug 'tpope/vim-sensible'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
    Plug 'rebelot/kanagawa.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'rose-pine/neovim'
    Plug 'ap/vim-css-color'
    Plug 'briancollins/vim-jst'
    Plug 'tpope/vim-fugitive'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
    Plug 'terryma/vim-multiple-cursors'
    Plug 'sainnhe/sonokai'

call plug#end()

colorscheme rose-pine

" Press enter to use Code-Suggestions
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nnoremap <C-s> :w<CR>
let mapleader = " "
" Keyboard shortcuts
nnoremap <leader>t :terminal<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>h :nohlsearch<CR>
nnoremap <leader>r :NERDTreeRefreshRoot<CR>

" Find files using Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" Changing Color Themes
nnoremap <leader>1 :colorscheme rose-pine-main<CR>
nnoremap <leader>2 :colorscheme rose-pine-moon<CR>
nnoremap <leader>3 :colorscheme kanagawa-wave<CR>
nnoremap <leader>4 :colorscheme kanagawa-dragon<CR>
nnoremap <leader>5 :colorscheme default<CR>
nnoremap <leader>6 :colorscheme sonokai<CR>

" Read .ejs files as html (for syntax highlighting & suggestions)
autocmd BufRead,BufNewFile *.ejs set filetype=html
