return {
	-- Essential Plugins
  { "williamboman/mason.nvim", opts = function() require("plugins.config.mason") end },

  -- Tree-sitter
	{ "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate" },

	-- UI
	{ "xiyaowong/transparent.nvim", opts = function() require("plugins.config.transparent") end },
	{ "scottmckendry/cyberdream.nvim", lazy = false, priority = 1000 },
}
--[[return {
  -- Essential Plugins
  { "m4xshen/autoclose.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },

  -- LSP and Completion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "saadparwaiz1/cmp_luasnip" },
  { "L3MON4D3/LuaSnip" },
  { "rafamadriz/friendly-snippets" },
  { "danymat/neogen" },
  { "folke/trouble.nvim" },

  -- File Navigation and Search
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  { "ibhagwan/fzf-lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "ahmedkhalf/project.nvim" },

  -- UI and Enhancements
  { "kevinhwang91/nvim-ufo", dependencies = { "kevinhwang91/promise-async" } },
  { "lukas-reineke/indent-blankline.nvim" },
  { "HiPhish/rainbow-delimiters.nvim" },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "folke/noice.nvim", dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" } },
  { "norcalli/nvim-colorizer.lua" },
  { "lewis6991/gitsigns.nvim" },

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

  -- Themes
  { "scottmckendry/cyberdream.nvim", lazy = false, priority = 1000 },
}

  ]]--
