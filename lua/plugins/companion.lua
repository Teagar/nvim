return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = require("plugins.config.codecompanion"),
  },
	{
    "github/copilot.vim",
    init = function()
      g.copilot_enable = false
      g.copilot_no_tab_map = true
    end,
  }
}

