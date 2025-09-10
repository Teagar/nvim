return {
	-- Essential Plugins
  { "williamboman/mason.nvim", opts = function() require("plugins.config.mason") end },

  -- Tree-sitter
	{ "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },

	-- UI
	{ "xiyaowong/transparent.nvim", opts = function() require("plugins.config.transparent") end },
	{ "scottmckendry/cyberdream.nvim", lazy = false, priority = 1000 },
  { "folke/noice.nvim", event = "VeryLazy", opts = require("plugins.config.noice") ,dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" } },

	-- LSP and Completion
	{ "saghen/blink.cmp", version="1.*", opts = require("plugins.config.blink-cmp") },
	{ "saghen/blink.indent", opts = require("plugins.config.blink-indent") },
	--{ "danymat/neogen", config = true, version = "*" }

	-- GIT
  { "lewis6991/gitsigns.nvim", opts = function () require("plugins.config.gitsigns") end },
	-- Telescope
	{ 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
}

--[[return {

  -- LSP and Completion
  { "rafamadriz/friendly-snippets" },

  -- File Navigation and Search
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  { "ibhagwan/fzf-lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "ahmedkhalf/project.nvim" },

  -- UI and Enhancements
  { "kevinhwang91/nvim-ufo", dependencies = { "kevinhwang91/promise-async" } },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "norcalli/nvim-colorizer.lua" },

  -- Language Server Support
  { "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" },


  -- Keybindings and Utils
  { "folke/which-key.nvim", event = "VeryLazy",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    }
  },


  ]]--
