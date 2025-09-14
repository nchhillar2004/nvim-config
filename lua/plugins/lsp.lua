return {
    { 'neovim/nvim-lspconfig',
        dependencies = {
            "stevearc/conform.nvim",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/nvim-cmp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "windwp/nvim-ts-autotag"
        },
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    lua = { "stylua" },
                    javascript = { "prettier" },
                }
            })

            require('nvim-ts-autotag').setup({
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = false
                },
                per_filetype = {
                    ["html"] = {
                        enable_close = true
                    }
                }
            })

            local cmp_lsp = require("cmp_nvim_lsp")
            local capabilities = vim.tbl_deep_extend(
                "force",
                vim.lsp.protocol.make_client_capabilities(),
                cmp_lsp.default_capabilities())

            require("mason").setup({
                ui = {
                    border = "rounded",
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                },
            })
            require("mason-lspconfig").setup {
                ensure_installed = { "ts_ls", "jdtls", "sqls", "pyright", "gopls", "clangd",
                    "bashls", "lua_ls", "rust_analyzer", "html", "tailwindcss", "prismals" },
                handlers = {
                    function(server_name) -- Default handler
                        require("lspconfig")[server_name].setup({
                            capabilities = capabilities
                        })
                    end,
                    ["lua_ls"] = function()
                        local lspconfig = require("lspconfig")
                        lspconfig.lua_ls.setup {
                            capabilities = capabilities,
                            settings = {
                                Lua = {
                                    runtime = { version = "Lua 5.4" },
                                    diagnostics = {
                                        globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
                                    }
                                }
                            }
                        }
                    end,
                }
            }

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

            vim.diagnostic.config({
                -- update_in_insert = true,
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                },
            })

            local on_attach = function(_, bufnr)
                local opts = { buffer = bufnr, noremap = true, silent = true }
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
            end

            local lspconfig = require("lspconfig")
            for _, server in ipairs({ "ts_ls", "jdtls", "gopls", "clangd", "pyright", "html", "rust_analyzer" }) do
                lspconfig[server].setup({
                    capabilities = capabilities,
                    on_attach = on_attach
                })
            end
        end
    }
}
