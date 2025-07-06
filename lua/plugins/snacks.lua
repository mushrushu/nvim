return {
    "folke/snacks.nvim",
    priority = 1000,
    ---@type snacks.Config
    ---@class snacks.explorer.Config
    keys = {
        { "<leader>zen", function() Snacks.zen() end,             desc = "Toggle Zen Mode",     mode = "n" },
    },
    opts = {
        bigfile = {
            enabled = true
          -- your bigfile configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        },
        dashboard = {
            enabled = true
          -- your dashboard configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        },
        zen = {
            enabled = true,
            plugins = {
                    tmux = { enabled = true }
            }
        },
        --explorer = {
        --    enabled = true,
        --  -- your explorer configuration comes here
        --  -- or leave it empty to use the default settings
        --  -- refer to the configuration section below
        --    replace_netrw = true,
        --},
        --picker = {
        --    enabled = true,
        --    sources = {
        --      explorer = {
        --        -- your explorer picker configuration comes here
        --        -- or leave it empty to use the default settings
        --      }
        --    }
        --}
    }
}
