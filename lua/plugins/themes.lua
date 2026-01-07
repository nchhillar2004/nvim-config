return {
    {
        { 'rose-pine/neovim', name = 'rose-pine',
            config = function()
                vim.cmd('colorscheme rose-pine')
                --vim.cmd('colorscheme vim')
            end
        },
        { 'ficcdaf/ashen.nvim',
            config = function()
                require('ashen')
            end
        },
        { 'projekt0n/github-nvim-theme', name = 'github-theme' }
    }
}
