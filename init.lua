require("config.lazy")
require("config.keymaps")
require("config.settings")
require("config.plugins")

-- setup languages for better syntax highlight
require'nvim-treesitter.configs'.setup {
    ensure_installed = {"typescript", "c", "cpp", "tsx", "asm", "python", "html", "css"},
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    } 
}

-- Install Coc LSP using the following command
