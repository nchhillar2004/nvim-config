return {
    {
        "nvim-treesitter/nvim-treesitter-context",
        config = function()
            require('treesitter-context').setup{
                enable = true,
                multiwindow = true,
                max_lines = 2, -- only show 2 line in context
                line_numbers = true
            }
        end
    }
}
