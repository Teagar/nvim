M.utils.setup_core = function()
    require("config.lazy")
    require("config.settings")
    require("config.mappings")
    require("config.functions")
    require("config.highlights")
    require("plugins.plugins")
    require("config.lsp.init")
    require("plugins.config.lualine")
end

M.utils.setup_plugins = function()
    require("autoclose").setup()
    require("mason").setup()
    require("ufo").setup(require("plugins.config.ufo"))
    require("ibl").setup()
    require("rainbow-delimiters.setup").setup()
    require("plugins.config.ibl")
    require("noice").setup(require("plugins.config.noice"))
    require("gitsigns").setup(require("plugins.config.gitsigns"))
end

M.utils.setup_ui = function()
    require("nvim-tree").setup(require("plugins.config.nvim-tree"))
    require("lualine").setup()
    require("cmp").setup(require("plugins.config.cmp"))
    require("telescope").setup(require("plugins.config.telescope"))
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("projects")
    require("project_nvim").setup()
    require("colorizer").setup()
    require("cyberdream").setup()
end

-- Main setup
M.utils.setup_core()
M.utils.setup_plugins()
M.utils.setup_ui()
