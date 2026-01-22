-- adds a file explorer split
return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            sort = {
                folders_first = true,
                files_first = false,
            },
            view = {
                side = "right",
                width = 35,
                --number = true,
                --relativenumber = true,
                float = {
                    enable = true,
                    quit_on_focus_loss = true,
                    open_win_config = {
                        relative = "editor",
                        border = "rounded",
                        width = 75,
                        height = 48,
                        col = 999,
                        row = 0
                    },
                },
            },
            renderer = {
                indent_markers = {
                    enable = true,
                    inline_arrows = true,
                }
            }
        }
    end,
}
