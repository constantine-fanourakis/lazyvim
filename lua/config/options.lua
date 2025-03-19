-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false
vim.g.snacks_indent = false

vim.g.autoformat = false

-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "basedpyright"

-- Enable line wrapping
vim.wo.wrap = true

-- 80 char column
vim.wo.colorcolumn = "80"
