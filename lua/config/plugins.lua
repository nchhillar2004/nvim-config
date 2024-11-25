require("ibl").setup()

require('onedark').setup {
    style = 'darker'
}

-- setup & config plugins for custom use
require("bufferline").setup({
    options = {
        themable = true,
        numbers = "buffer_id", -- show bufferid with the file name in bufferline
        separator_style = "slant", -- ""
        offsets = {
            {
                filetype = "NvimTree",
                text = "Nvim Tree", -- title of nvim-tree (file explorer)
                text_align = "center",
                separator = true
            }
        }
    }
})

local hooks = require"ibl.hooks"
hooks.register(
hooks.type.WHITESPACE,
hooks.builtin.hide_first_space_indent_level -- hide the first indent line
)

require("nvim-tree").setup{
    actions = {
        open_file = {
            quit_on_open = true, -- automatically quit nvim-tree when opened a file
        },
    },
}

require('treesitter-context').setup{
    enable = true,
    max_lines = 2, -- only show 2 line in context
}

require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
})

-- use these help commands in nvim to see the docs for specific plugin and edit them hide_first_space_indent_level
-- `:h ibl.config`  -- for indent backline plugin
-- `:h treesitter-context`
-- `:h nvim-tree`
-- `:h bufferline`
-- `:h nvim-treesitter`

