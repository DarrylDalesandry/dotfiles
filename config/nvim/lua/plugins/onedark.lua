return {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    init = function()
        require("onedark").setup {
            style = "deep",
        }
        require("onedark").load()
        vim.cmd "highlight colorcolumn guibg=#21283B"
    end,
}
