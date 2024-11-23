vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.wrap = false
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.guicursor = ""
vim.o.scrolloff = 8
vim.opt.completeopt = 'noinsert', 'menuone', 'noselect'
vim.o.wildmenu = true
vim.o.title = true
vim.o.cursorline = true
vim.opt.termguicolors = true
vim.o.encoding = 'utf-8'
vim.o.fileencodings = 'utf-8'
vim.o.fileencoding = 'utf-8'

vim.g.airline_powerline_fonts = 1
vim.g.webdevicons_enable = 1
vim.g.webdevicons_enable_airline_tabline = 1
vim.g.webdevicons_enable_airline_statusline = 1

vim.cmd('colorscheme rose-pine')
vim.cmd('highlight Normal guibg=none')

require("bufferline").setup{}
require("nvim-tree").setup{
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
}

vim.cmd([[
autocmd BufRead,BufNewFile *.ejs set filetype=html
autocmd BufRead,BufNewFile *.jsp set filetype=html
]])

