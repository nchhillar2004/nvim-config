return {
    { 'neovim/nvim-lspconfig',
        dependencies = {
            "stevearc/conform.nvim",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/nvim-cmp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        },
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                }
            })

            require('mason').setup({
                ui = {
                    border = 'none',
                    show_progress = false,
                    notification = false,
                },
            })
            require("mason-lspconfig").setup {
                ensure_installed = { "ts_ls", "jdtls", "sqls", "pyright", "gopls", "clangd", "bashls", "lua_ls", "rust_analyzer", "html", "tailwindcss" },
            }

            local lspconfig = require('lspconfig')

            local on_attach = function(client, bufnr)
                local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
                local opts = { noremap = true, silent = true }

                buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
                buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
                buf_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
            end

            lspconfig.pyright.setup{}
            lspconfig.ts_ls.setup{}

            local cmp = require('cmp')
            local luasnip = require('luasnip')

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = {
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                    ['<Down>'] = cmp.mapping.select_next_item(),
                    ['<Up>'] = cmp.mapping.select_prev_item()
                },
                sources = {
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                },
            })
        end
    }
}
