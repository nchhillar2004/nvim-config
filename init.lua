require("config.lazy")
require("config.keymaps")
require("config.settings")
require("config.plugins")

-- setup languages for better syntax highlight
require'nvim-treesitter.configs'.setup {
    ensure_installed = {"typescript", "java", "go", "c", "cpp", "tsx", "rust", "python", "lua", "r", "haskell", "fortran", "markdown", "html", "css"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

-- Install Coc LSP using the following command
-- :CocInstall coc-java coc-rust-analyzer coc-go coc-clangd coc-tsserver coc-pyright coc-r-lsp coc-lua coc-prettier coc-html coc-css coc-json coc-perl @yaegassy/coc-tailwindcss3
