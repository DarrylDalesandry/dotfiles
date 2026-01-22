return {
    "neovim/nvim-lspconfig",
    config = function()
        require("lspconfig.ui.windows").default_options.border = "rounded"
        require("lspconfig.ui.windows").default_options = {
            vim.diagnostic.config({
                virtual_text = false,
            }),
        }

        vim.o.updatetime = 100
        vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
            group = vim.api.nvim_create_augroup("float_diagnostic_cursor", { clear = true }),
            callback = function()
                vim.diagnostic.open_float(nil,
                    {
                        focus = false,
                        scope = "cursor",
                        border = "rounded",
                    })
            end
        })
    end,
}
