return {
    {
        { 'rose-pine/neovim', name = 'rose-pine',
            config = function()
                --vim.cmd('colorscheme rose-pine')
            end
        },
        {'morhetz/gruvbox',
            lazy = false,
            priority = 1000,
            config = function()
                vim.g.gruvbox_contrast_dark = "hard"
        --        vim.cmd.colorscheme("gruvbox")
            end,
        },
        { 'ficcdaf/ashen.nvim',
            config = function()
                require('ashen')
                --vim.cmd('colorscheme ashen')
            end
        },
        { 'projekt0n/github-nvim-theme', name = 'github-theme' },
        {'nyoom-engineering/oxocarbon.nvim'},
        {    "slugbyte/lackluster.nvim",
            lazy = false,
            priority = 1000,
            init = function()
                --vim.cmd.colorscheme("lackluster")
                vim.cmd.colorscheme("lackluster-hack")
                -- vim.cmd.colorscheme("lackluster-mint")
            end,
        }
    }
}
