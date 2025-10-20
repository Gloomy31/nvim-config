return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    { 'mbbill/undotree' },

    { 'tpope/vim-fugitive' },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    { 'nvim-mini/mini.nvim', version = '*' },

    {
        'nvim-neo-tree/neo-tree.nvim',
        dependencies = {
            'MunifTanjim/nui.nvim',
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            's1n7ax/nvim-window-picker'
        }
    },

    {
        'brianhuster/live-preview.nvim',
        dependencies = {
            -- You can choose one of the following pickers
            'nvim-telescope/telescope.nvim',
            -- 'ibhagwan/fzf-lua',
            -- 'echasnovski/mini.pick',
            -- 'folke/snacks.nvim',
        },
    },

    {
        'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons',
        keys = {
            { "<leader>tp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
            { "<leader>tP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
            { "<leader>tl", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
            { "<leader>th", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
            { "<S-tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
            { "<tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
            { "<leader>h", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
            { "<leader>l", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
        }

    },

    -- { 'neoclide/coc.nvim', branch = 'release', },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },

    { "ThePrimeagen/vim-be-good" },
}
