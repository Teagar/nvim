-- Global configuration
require "globals"
g.vscode_snippets_path = lpath
g.snipmate_snippets_path = lpath

vim.loader.enable() 

-- Core plugins and configurations
require "config.lazy"
require "config.settings"
require "config.mappings"
require "config.functions"
require "config.highlights"
require "plugins.plugins"
require "config.lsp.init"
require "plugins.config.lualine"
require "plugins.config.ibl"

-- LSP setup (if applicable)
-- ... (your LSP setup code here)

-- General utilities and enhancements
require "autoclose".setup()
require "mason".setup()
require "ufo".setup(require("plugins.config.ufo"))
require "ibl".setup()
require "rainbow-delimiters.setup".setup()
require "plugins.config.ibl"
require "noice".setup(require("plugins.config.noice"))

-- UI and navigation
require "nvim-tree".setup(require("plugins.config.nvim-tree"))
require "lualine".setup()
require "bufferline".setup(require("plugins.config.bufferline"))
require "cmp".setup(require("plugins.config.cmp"))
require "telescope".setup(require("plugins.config.telescope"))
require('telescope').load_extension('fzf')
