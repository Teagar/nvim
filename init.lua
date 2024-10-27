require "config.lazy"
require "config.settings"
require "config.mappings"
require "config.functions"
require "config.highlights"
require "plugins.plugins"

require("autoclose").setup()
require("mason").setup()
require("nvim-tree").setup(require("plugins.config.nvim-tree"))
require("lualine").setup()require("plugins.config.lualine")
--require("ufo").setup(require("plugins.config.ufo"))

