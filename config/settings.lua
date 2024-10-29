local opt = vim.opt
local g = vim.g

opt.scrolloff = 8
opt.cmdheight = 2
opt.guicursor = ''
opt.fillchars = { eob = " " }
opt.cursorline = true

opt.foldcolumn = "1"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true

opt.shiftwidth = 2       

opt.backup = false
opt.clipboard = 'unnamedplus'
opt.writebackup = false

-- disable netrw at the very start of your init.lua
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
opt.termguicolors = true
