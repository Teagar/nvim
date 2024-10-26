require "configs.personalConfig"
require "mappings"
require "functions"
require "highlights"

local opt = vim.opt
local g = vim.g
local icons = require "icons"

opt.scrolloff = 8
opt.cmdheight = 2
opt.guicursor = ''
opt.fillchars = { eob = icons.ui.BoldLineLeft }

opt.backup = false
opt.writebackup = false

