-- Vim API access
vim = vim
opt = vim.opt
wo = vim.wo
augroup = vim.api.nvim_create_augroup
autocmd = vim.api.nvim_create_autocmd
keymap = vim.api.nvim_set_keymap
g = vim.g
hl = vim.api.nvim_set_hl
lpath = vim.fn.stdpath("config") .. "/lua/my-snippets"
icons = require("icons")

