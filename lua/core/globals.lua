M.core.icons = require("./core/icons")

M.core.globals = function()
  vim = vim
  opt = vim.opt
  wo = vim.wo
  lsp = vim.lsp
  augroup = vim.api.nvim_create_augroup
  autocmd = vim.api.nvim_create_autocmd
  keymap = vim.api.nvim_set_keymap
  g = vim.g
  hl = vim.api.nvim_set_hl
  icons = M.core.icons
end

M.core.globals()
