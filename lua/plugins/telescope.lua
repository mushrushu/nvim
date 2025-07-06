return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
        },
        --{
        --    "nvim-telescope/telescope-file-browser.nvim",
        --    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
        --    config = function()
        --    end,
        --}
        },
        config = function()
            require('telescope').setup({
                --extensions = {
                --  file_browser = {
                --    -- disables netrw and use telescope-file-browser in its place
                --    hijack_netrw = true,
                --  },
                --},
            })
            --require("telescope").load_extension "file_browser"
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find_files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live_grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help_tags' })
        end,
    },

}
