return {
    {
        {'rose-pine/neovim', name = 'rose-pine'},
        {'morhetz/gruvbox'},
        {'blazkowolf/gruber-darker.nvim',
            lazy = false,
            priority = 1000,
            init = function()
                vim.cmd.colorscheme("gruber-darker")
            end,
        },
        {'slugbyte/lackluster.nvim'}
    }
}
