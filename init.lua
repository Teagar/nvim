require "config.lazy"
require "config.settings"
require "config.mappings"
require "config.functions"
require "config.highlights"
require "plugins.plugins"
require "config.lsp.init"
require("plugins.config.lualine")

require("autoclose").setup()
require("mason").setup()
require("nvim-tree").setup(require("plugins.config.nvim-tree"))
require("lualine").setup()
require("cmp").setup(require("plugins.config.cmp"))
--require("ufo").setup(require("plugins.config.ufo"))
