-- plugins
return {
    { 'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' } },
    { 'rose-pine/neovim', name = 'rose-pine' },
    { 'rebelot/kanagawa.nvim' },
    { 'ficcdaf/ashen.nvim' },
    { 'sainnhe/gruvbox-material' },
    { 'mg979/vim-visual-multi', branch = 'master' },
    { 'tpope/vim-fugitive' },
    { 'lukas-reineke/indent-blankline.nvim' },
    { 'nvim-treesitter/nvim-treesitter-context' },
    { 'tpope/vim-sensible' },
    { 'vim-airline/vim-airline' },
    { 'ryanoasis/vim-devicons' },
    { 'neoclide/coc.nvim', branch = 'release' },
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    { 'prettier/vim-prettier' },
    { 'akinsho/bufferline.nvim', version = "*" },
    { 'nvim-tree/nvim-tree.lua' },
    { 'nvim-tree/nvim-web-devicons' },
    { 'ziglang/zig.vim' },
    { 'neoclide/jsonc.vim' }
}
