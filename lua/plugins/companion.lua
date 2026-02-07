return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = require("plugins.config.codecompanion"),
    enabled = false
  },
	{ "github/copilot.vim" }
}

