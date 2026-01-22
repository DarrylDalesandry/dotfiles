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
        --[[
        local lspconfig = require "lspconfig"
        lspconfig.arduino_language_server.setup {
            cmd = {
                "arduino-language-server",
                --"-clangd", "~/.local/share/nvim/mason/packages/clangd/clangd_20.1.0/bin/clangd",
                "-cli", "~/.local/bin/arduino-cli",
                "-cli-config", "~/.arduino15/arduino-cli.yaml",
                "--fqbn", "SparkFun:avr:RedBoard"
            },

            capabilities = {
                textDocument = {
                    semanticTokens = vim.NIL
                },
                workspace = {
                    semanticTokens = vim.NIL
                }
            },

            filetypes = {
                "arduino"
            }

        }
--]]
    end,
}
