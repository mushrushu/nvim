return {
    {
        "neovim/nvim-lspconfig",
    },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { "mason-org/mason.nvim", opts = {} },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { 
                "lua_ls",
                "rust_analyzer",
                "gopls",
                "delve",
                "gotestsum",
                "goimports",
                "ansiblels",
                "jqls",
                "terraformls",
                "yamlls",
                "jsonls"
            },
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
            config = function()
                require("lspconfig").lua_ls.setup {}
                require("lspconfig").gopls.setup {}
                require("mason").setup()
                require("mason-lspconfig").setup {
                    ensure_installed = {
                        "lua_ls",
                        "rust_analyzer",
                        "gopls",
                        "delve",
                        "gotestsum",
                        "goimports",
                        "ansiblels",
                        "jqls",
                        "terraformls",
                        "yamlls",
                        "jsonls"
                    },
                }
            end,
        },
        keys =
            {
                { "<leader>dt", function() if vim.diagnostic.is_enabled() then vim.diagnostic.enable(false); print('diag disabled') else vim.diagnostic.enable(); print('diag enabled') end end, desc = "toggle diagnostics", },
                --{ "<leader>dt", function() vim.diagnostic.enable(not vim.diagnostic.is_enabled()) end, desc = "toggle diagnostics", mode = "n" },
                { "<leader>dh", function() vim.diagnostic.open_float() end, desc = "toggle diagnostics hover on", mode = "n" },
            }
    }
}
