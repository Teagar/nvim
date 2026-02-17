return {
	{ "xiyaowong/transparent.nvim", opts = function() require("plugins.config.transparent") end },
	{ "scottmckendry/cyberdream.nvim", lazy = false, priority = 1000 },
  { "folke/noice.nvim", event = "VeryLazy", opts = require("plugins.config.noice"), dependencies = { "MunifTanjim/nui.nvim", { "rcarriga/nvim-notify", opts = require("plugins.config.notify") } } },
  { "nvim-lualine/lualine.nvim", opts = function() require("plugins.config.lualine") end, dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "nvim-tree/nvim-tree.lua", opts = function () require("plugins.config.nvim-tree") end },
  { 'MeanderingProgrammer/render-markdown.nvim', dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, opts = require("plugins.config.markdown") },
  { "norcalli/nvim-colorizer.lua" },
}
