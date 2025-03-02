return {
    { 'nvim-tree/nvim-tree.lua',
        config = function()
            require("nvim-tree").setup({
                actions = {
                    open_file = {
                        quit_on_open = true, -- automatically quit nvim-tree when opened a file
                    },
                },
                sort = {
                    sorter = "case_sensitive",
                },
                view = {
                    width = 30,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    git_ignored = false,
                    dotfiles = false,
                },
            })
        end
    },
}
