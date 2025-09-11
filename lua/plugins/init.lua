return {
	-- Essential Plugins
  { "williamboman/mason.nvim", opts = function() require("plugins.config.mason") end },

  -- Tree-sitter
	{ "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },

	-- UI
	{ "xiyaowong/transparent.nvim", opts = function() require("plugins.config.transparent") end },
	{ "scottmckendry/cyberdream.nvim", lazy = false, priority = 1000 },
  { "folke/noice.nvim", event = "VeryLazy", opts = require("plugins.config.noice"), dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" } },
  { "nvim-lualine/lualine.nvim", opts = function() require("plugins.config.lualine") end, dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "nvim-tree/nvim-tree.lua", opts = function () require("plugins.config.nvim-tree") end },

	-- LSP and Completion
	{ "saghen/blink.cmp", version="1.*", opts = require("plugins.config.blink-cmp") },
	{ "saghen/blink.indent", opts = require("plugins.config.blink-indent") },
  { "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" },
	--{ "danymat/neogen", config = true, version = "*" }

	-- GIT
  { "lewis6991/gitsigns.nvim", opts = function () require("plugins.config.gitsigns") end },
	{ "NeogitOrg/neogit", dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" } },

	-- Telescope
	{ 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },

  -- Keybindings and Utils
  { "folke/which-key.nvim", event = "VeryLazy",
    keys = {
      {
        "<leader>?", function() require("which-key").show({ global = false }) end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    }
  },
}

--[[return {

  -- LSP and Completion
  { "rafamadriz/friendly-snippets" },

  -- File Navigation and Search

  -- UI and Enhancements
  { "norcalli/nvim-colorizer.lua" },



  ]]--
