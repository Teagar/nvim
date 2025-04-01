-- Core plugins and configurations
local utils = {}

utils.setup_core = function()
    require("config.lazy")
    require("config.settings")
    require("config.mappings")
    require("config.functions")
    require("config.highlights")
    require("plugins.plugins")
    require("config.lsp.init")
    require("plugins.config.lualine")
end

utils.setup_plugins = function()
    require("autoclose").setup()
    require("mason").setup()
    require("ufo").setup(require("plugins.config.ufo"))
    require("ibl").setup()
    require("rainbow-delimiters.setup").setup()
    require("plugins.config.ibl")
    require("noice").setup(require("plugins.config.noice"))
    require("gitsigns").setup(require("plugins.config.gitsigns"))
end

utils.setup_ui = function()
    require("nvim-tree").setup(require("plugins.config.nvim-tree"))
    require("lualine").setup()
    require("bufferline").setup(require("plugins.config.bufferline"))
    require("cmp").setup(require("plugins.config.cmp"))
    require("telescope").setup(require("plugins.config.telescope"))
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("projects")
    require("project_nvim").setup()
    require("colorizer").setup()
end

-- Main setup
utils.setup_core()
utils.setup_plugins()
utils.setup_ui()
