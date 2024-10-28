return {
  {"m4xshen/autoclose.nvim"},

  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },

  {"hrsh7th/nvim-cmp"},
  {"hrsh7th/cmp-nvim-lsp"},
  {"saadparwaiz1/cmp_luasnip"},
  {"L3MON4D3/LuaSnip"},
  { "rafamadriz/friendly-snippets" },

  { 'nvim-telescope/telescope.nvim', dependencies = { "nvim-lua/plenary.nvim"} },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

  {"nvim-tree/nvim-tree.lua"},
  {"kevinhwang91/nvim-ufo", dependencies = { "kevinhwang91/promise-async" } },
  {'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim'},
  {'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
  {"nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
  }
}

