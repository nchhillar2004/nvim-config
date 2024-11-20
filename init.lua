require("config.lazy")
require("config.keymaps")
require("config.settings")
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"typescript", "java", "go", "c", "cpp", "tsx", "lua", "markdown", "html", "css", "rust"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
