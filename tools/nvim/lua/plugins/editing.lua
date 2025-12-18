return {
    { "mg979/vim-visual-multi" },
    {
        "tpope/vim-surround",
    },
    { "christoomey/vim-tmux-navigator", lazy = false },
    {
        "https://github.com/numToStr/Comment.nvim",
        event = "VeryLazy",
        config = function()
            require("Comment").setup()
        end,
    },
    {
        "https://github.com/windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup()
        end,
    },
    {
        "https://github.com/tpope/vim-sleuth",
        event = { "BufReadPost", "BufNewFile" },
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },
    {
        "johmsalas/text-case.nvim",
        dependencies = { "nvim-telescope/telescope.nvim" },
        config = function()
            require("textcase").setup({ prefix = 'gr' })
            require("telescope").load_extension("textcase")
        end,
        lazy = false,
    },
    -- TODO: This is a useful plugin, but conflicts with nvim-autopairs
    -- {
    --   "gaoDean/autolist.nvim",
    -- .......
    -- },
}
