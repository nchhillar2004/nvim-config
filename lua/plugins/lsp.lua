return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "stevearc/conform.nvim",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/nvim-cmp",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "windwp/nvim-ts-autotag",
        },
        config = function()
            -- =====================
            -- Formatting
            -- =====================
            require("conform").setup({
                formatters_by_ft = {
                    lua = { "stylua" },
                    javascript = { "prettier" },
                },
            })

            -- =====================
            -- Treesitter autotag
            -- =====================
            require("nvim-ts-autotag").setup({
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = false,
                },
                per_filetype = {
                    html = { enable_close = true },
                },
            })

            -- =====================
            -- LSP capabilities
            -- =====================
            local capabilities =
            require("cmp_nvim_lsp").default_capabilities(
                vim.lsp.protocol.make_client_capabilities()
            )

            local on_attach = function(_, bufnr)
                local opts = { buffer = bufnr, silent = true }
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
            end

            -- =====================
            -- Mason
            -- =====================
            require("mason").setup({
                ui = {
                    border = "rounded",
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })

            require("mason-lspconfig").setup({
                ensure_installed = {
                    "ts_ls",
                    "jdtls",
                    "sqls",
                    "pyright",
                    "gopls",
                    "clangd",
                    "bashls",
                    "lua_ls",
                    "rust_analyzer",
                    "html",
                    "tailwindcss",
                    "prismals",
                },
            })

            -- =====================
            -- LSP configs (NEW API)
            -- =====================
            local servers = {
                "ts_ls",
                "jdtls",
                "sqls",
                "pyright",
                "gopls",
                "clangd",
                "bashls",
                "rust_analyzer",
                "html",
                "tailwindcss",
                "prismals",
            }

            for _, server in ipairs(servers) do
                vim.lsp.config(server, {
                    capabilities = capabilities,
                    on_attach = on_attach,
                })
            end

            -- Lua special case
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
                on_attach = on_attach,
                settings = {
                    Lua = {
                        runtime = { version = "Lua 5.4" },
                        diagnostics = {
                            globals = {
                                "vim",
                                "bit",
                                "it",
                                "describe",
                                "before_each",
                                "after_each",
                            },
                        },
                    },
                },
            })

            -- Enable everything
            vim.lsp.enable(vim.tbl_extend("force", servers, { "lua_ls" }))

            -- =====================
            -- CMP
            -- =====================
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = {
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<CR>"] = cmp.mapping.confirm({ select = false }),
                    ["<Down>"] = cmp.mapping.select_next_item(),
                    ["<Up>"] = cmp.mapping.select_prev_item(),
                },
                sources = {
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                },
            })

            -- =====================
            -- Diagnostics UI
            -- =====================
            vim.diagnostic.config({
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                },
            })
        end,
    },
}
