-- set numbers
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
-- set tab width to 4
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- ADD THE FUNCTIONALITY OF TEXT WRAP ONLY WHEN A LINE REACHES 300 CHARACTERS
-- disable text wrap
vim.o.wrap = false
vim.o.colorcolumn='120'
vim.o.hlsearch = false
vim.o.incsearch = true
-- set cursor to block
vim.o.guicursor = ""
vim.o.scrolloff = 8
vim.o.completeopt = 'noinsert', 'menuone', 'noselect'
vim.o.wildmenu = true
vim.o.title = true
vim.o.cursorline = true
vim.o.termguicolors = true
vim.o.swapfile = false

-- used by vim-devicons and airline
vim.o.encoding = 'utf-8'
vim.o.fileencodings = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.g.airline_powerline_fonts = 1
vim.g.webdevicons_enable = 1
vim.g.webdevicons_enable_airline_tabline = 1
vim.g.webdevicons_enable_airline_statusline = 1

-- set default colorscheme
vim.cmd('colorscheme rose-pine')
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_foreground = 'original'
vim.g.gruvbox_material_enable_bold = 0
-- set default background
-- vim.cmd('highlight Normal guibg=none') -- here I use a background image so it's none, i.e transparent bg

vim.g.rust_analyzer_auto_start = 0

-- don't show parse errors in a separate window
vim.g.zig_fmt_parse_errors = 0

-- read .ejs and .jsp files as .html
vim.cmd([[
autocmd BufRead,BufNewFile *.ejs set filetype=html
autocmd BufRead,BufNewFile *.jsp set filetype=html
]])

vim.api.nvim_create_autocmd('BufWritePre',{
  pattern = {"*.zig", "*.zon"},
  command = "call CocActionAsync('organizeImport')"
})

-- diable auto indent and code suggestion in asm files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "asm",
    command = [[
    setlocal indentexpr=
    let b:coc_suggest_disable = 1
    ]]
})
