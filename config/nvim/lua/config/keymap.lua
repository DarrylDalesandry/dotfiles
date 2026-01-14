-- <leader> setup
vim.g.mapleader = ";"
vim.g.maplocalleader = "\\"

-- file manager toggle
vim.keymap.set("n", "<leader>f", "<CMD>:NvimTreeToggle<CR>")

-- clear search fields
vim.keymap.set("n", "<leader>c", "<CMD>:nohlsearch<CR>")

-- open terminal
vim.keymap.set("n", "<leader>ot", "<CMD>:vsplit<CR>:wincmd j<CR>" .. ":terminal<CR>")

-- lazy, mason open
vim.keymap.set("n", "<leader>l", "<CMD>:Lazy<CR>")
vim.keymap.set("n", "<leader>m", "<CMD>:Mason<CR>")

-- splits
vim.keymap.set("n", "<leader>h", "<CMD>:split<CR>")
vim.keymap.set("n", "<leader>v", "<CMD>:vsplit<CR>")

-- navigating splits
vim.keymap.set("n", "<C-h>", "<CMD>:wincmd h<CR>")
vim.keymap.set("n", "<C-j>", "<CMD>:wincmd j<CR>")
vim.keymap.set("n", "<C-k>", "<CMD>:wincmd k<CR>")
vim.keymap.set("n", "<C-l>", "<CMD>:wincmd l<CR>")

-- telescope shortcuts
vim.keymap.set("n", "<leader>gf", "<CMD>:Telescope find_files<CR>")
vim.keymap.set("n", "<leader>gg", "<CMD>:Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>gb", "<CMD>:Telescope buffers<CR>")
vim.keymap.set("n", "<leader>gh", "<CMD>:Telescope help_tags<CR>")

--[[
-- keybinding from treesitter
init_selection = "<leader>ss",
node_incremental = "<leader>si",
scope_incremental = "<leader>sc",
node_decremental = "<leader>sd",

-- keybind from conform
-- format = "<leader>tf"

-- keybind from nvim-lint
-- lint = "<leader>tl"
--]]
