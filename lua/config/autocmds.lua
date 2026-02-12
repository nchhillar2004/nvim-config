--vim.cmd('highlight Normal guibg=#000')
--vim.cmd('highlight NormalNC guibg=#000')
vim.api.nvim_set_hl(0, "CursorLine", {
  bg = "#121212",
  nocombine = true,
})

-- read .ejs and .jsp files as .html
vim.cmd([[
autocmd BufRead,BufNewFile *.ejs set filetype=html
autocmd BufRead,BufNewFile *.jsp set filetype=html
]])

-- diable auto indent and code suggestion in asm files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "asm",
    command = [[
    setlocal indentexpr=
    ]]
})
