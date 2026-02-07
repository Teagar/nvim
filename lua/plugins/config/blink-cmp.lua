return {
	cmdline = {
		keymap = { preset = 'inherit' },
		completion = {
			menu = { auto_show = false },
			ghost_text = { enabled = true }
		},
	},

	keymap = { preset = 'default' },

	completion = {
		documentation = { auto_show = true, auto_show_delay_ms = 500 },
		keyword = { range = 'full' },	-- prefix|full
		accept = { auto_brackets = { enabled = false }, },
		list = { selection = { preselect = false, auto_insert = true } },
		menu = {
			auto_show = true,
			draw = {
				columns = {
					{ "label", "label_description", gap = 1 },
					{ "kind_icon", "kind" }
				},
			}
		},
	},

	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
	},
	fuzzy = { implementation = "prefer_rust_with_warning" },
}
