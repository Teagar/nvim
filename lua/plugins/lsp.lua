return {
	{ "saghen/blink.cmp", build = "cargo build --release", version="1.*", opts = require("plugins.config.blink-cmp") },
	{ "saghen/blink.indent", opts = require("plugins.config.blink-indent") },
	{ 'windwp/nvim-autopairs', event = "InsertEnter", config = true },
  { "nvimtools/none-ls.nvim", requires = "nvim-lua/plenary.nvim" },
	{ "danymat/neogen", config = true, version = "*" },
}
