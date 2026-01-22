-- Neovim configuration

-- Appearance
--  Show numbers, central scroll, show white space as dots,
--  show a vertical line at 80 columns, and enable colors
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 999
vim.opt.list = true
vim.opt.listchars = "tab:-->,trail:·,extends:·,precedes:·,space:·,nbsp:\\u2423,eol:\\u21a9"
-- vim.opt.listchars = "tab:>•,trail:•,extends:•,precedes:•,space:•"

vim.cmd "set cursorline"
vim.cmd "set colorcolumn=81"
vim.cmd "set signcolumn=yes"
vim.opt.termguicolors = true


-- Spaces not tabs, and four spaces when tab is pressed
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Long lines don't get wrapped
vim.opt.wrap = false

-- Allows visual block to copy cells that do not have characters
vim.opt.virtualedit = "block"

-- Split direction
--  New splits go right or down
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Sync system clipboard to Neovim clipboard
vim.opt.clipboard = "unnamedplus"

-- Nvim commands tab complete ignores case
vim.opt.ignorecase = true

-- Escaping terminal input mode shortcut
vim.api.nvim_command("tnoremap <C-t><ESC> <C-\\><C-n>")
