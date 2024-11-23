require("config.lazy")
require("config.keymaps")
require("config.settings")

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"typescript", "java", "go", "c", "cpp", "tsx", "python", "lua", "r", "markdown", "html", "css", "rust"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Install Coc LSP using the following command
-- :CocInstall coc-java coc-rust-analyzer coc-go coc-clangd coc-json coc-html coc-css coc-tsserver coc-pyright coc-r-lsp coc-prettier @yaegassy/coc-tailwindcss3
