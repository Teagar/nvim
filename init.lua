require "globals"

g.vscode_snippets_path = lpath
g.snipmate_snippets_path = lpath

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
require("telescope").setup(require("plugins.config.telescope"))

require('telescope').load_extension('fzf')

require("ufo").setup(require("plugins.config.ufo"))
require("ibl").setup()
require("rainbow-delimiters.setup").setup()
require("plugins.config.ibl")

require("noice").setup(require("plugins.config.noice"))


