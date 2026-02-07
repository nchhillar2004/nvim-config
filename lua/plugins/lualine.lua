return {
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            local colors = {
                red = '#ca1243',
                grey = '#181818',
                black = '#101010',
                bg = '#202020',
                white = '#ffffff',
                orange = '#fe8019',
                blue = '#4287f5',
                yellow = '#dfff00',
                dark_blue = '#00005f',
                dark_orange = '#5e3800'
            }

            local theme = {
                normal = {
                    a = { fg = colors.dark_blue, bg = colors.yellow, gui = 'bold' },
                    b = { fg = colors.white, bg = colors.grey },
                    c = { fg = colors.white, bg = colors.bg },
                    z = { fg = colors.dark_blue, bg = colors.yellow },
                },
                insert = {
                    a = { fg = colors.black, bg = colors.blue, gui = 'bold' },
                    b = { fg = colors.white, bg = colors.grey },
                    c = { fg = colors.white, bg = colors.dark_blue }
                },
                visual = {
                    a = { fg = colors.black, bg = colors.orange, gui = 'bold' },
                    c = { fg = colors.white, bg = colors.dark_orange }
                },
                replace = { a = { fg = colors.black, bg = colors.red } },
            }
            require('lualine').setup {
                options = {
                    icons_enabled = true,
                    theme = theme,
                    component_separators = { left = '', right = ''},
                    section_separators = { left = '', right = ''},
                    disabled_filetypes = {
                        statusline = {},
                        winbar = {},
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    always_show_tabline = true,
                    globalstatus = false,
                    refresh = {
                        statusline = 1000,
                        tabline = 1000,
                        winbar = 1000,
                        refresh_time = 16, -- ~60fps
                        events = {
                            'WinEnter',
                            'BufEnter',
                            'BufWritePost',
                            'SessionLoadPost',
                            'FileChangedShellPost',
                            'VimResized',
                            'Filetype',
                            'CursorMoved',
                            'CursorMovedI',
                            'ModeChanged',
                        },
                    }
                },
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch', 'diff'},
                    lualine_c = {'filename'},
                    lualine_x = {'encoding', 'fileformat', 'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {}
            }
        end,
    }
}
