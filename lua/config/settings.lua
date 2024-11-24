-- set numbers
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
-- set tab width to 4
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
-- disable text wrap
vim.o.wrap = false
vim.o.hlsearch = false
vim.o.incsearch = true
-- set cursor to block
vim.o.guicursor = ""
vim.o.scrolloff = 8
vim.opt.completeopt = 'noinsert', 'menuone', 'noselect'
vim.o.wildmenu = true
vim.o.title = true
vim.o.cursorline = true
vim.opt.termguicolors = true

-- used by vim-devicons and airline
vim.o.encoding = 'utf-8'
vim.o.fileencodings = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.g.airline_powerline_fonts = 1
vim.g.webdevicons_enable = 1
vim.g.webdevicons_enable_airline_tabline = 1
vim.g.webdevicons_enable_airline_statusline = 1

-- set default colorscheme
vim.cmd('colorscheme kanagawa-dragon')
-- set default background
-- vim.cmd('highlight Normal guibg=none') -- here I use a background image so it's none, i.e transparent bg

-- setup & config plugins for custom use
require("bufferline").setup({
    options = {
        themable = true,
        numbers = "buffer_id",
        separator_style = "slant",
        offsets = {
            {
                filetype = "NvimTree",
                text = "Nvim Tree",
                text_align = "center",
                separator = true
            }
        },
        hover = {
            enable = true,
            delay = 200,
            reveal = {'close'}
        }
    }
})

require("nvim-tree").setup{
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
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

-- read .ejs and .jsp files as .html
vim.cmd([[
autocmd BufRead,BufNewFile *.ejs set filetype=html
autocmd BufRead,BufNewFile *.jsp set filetype=html
]])

