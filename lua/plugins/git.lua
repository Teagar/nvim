return {
  { "lewis6991/gitsigns.nvim", opts = function () require("plugins.config.gitsigns") end },
	{ "NeogitOrg/neogit", dependencies = { "nvim-lua/plenary.nvim", "sindrets/diffview.nvim" } },
}
