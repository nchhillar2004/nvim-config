vim.cmd('highlight Normal guibg=#000')
vim.cmd('highlight NormalNC guibg=#000')
vim.cmd('highlight CursorLine ctermbg=235 guibg=#2e2e2e')

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
    let b:coc_suggest_disable = 1
    ]]
})
