return {
    {
        {
            "mason-org/mason.nvim",
            opts = {}
        },
        "neovim/nvim-lspconfig",
        dependencies = {
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
            { -- optional cmp completion source for require statements and module annotations
                "hrsh7th/nvim-cmp",
                opts = function(_, opts)
                    opts.sources = opts.sources or {}
                    table.insert(opts.sources, {
                        name = "lazydev",
                        group_index = 0, -- set group index to 0 to skip loading LuaLS completions
                    })
                end,
            },
            'saghen/blink.cmp',
            -- { "folke/neodev.nvim", enabled = false }, -- make sure to uninstall or disable neodev.nvim

        },
        config = function()
            vim.lsp.enable('lua_ls')
            vim.lsp.enable('clangd')
        end,
        { 'mfussenegger/nvim-jdtls' },
    }
}
