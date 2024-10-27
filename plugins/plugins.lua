return {
  {"m4xshen/autoclose.nvim"},
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  {"nvim-tree/nvim-tree.lua"},
  {"kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async"},
  {'jose-elias-alvarez/null-ls.nvim', requires = 'nvim-lua/plenary.nvim'},
  {'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
  {"nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
  }
}

