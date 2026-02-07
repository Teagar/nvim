return {
	cmdline = {
		keymap = { preset = 'inherit' },
		completion = {
			menu = { auto_show = false },
			ghost_text = { enabled = true }
		},
	},

  keymap = {
    -- none|default
    preset = 'default',

    -- ['<Tab>'] = { 'show_and_insert_or_accept_single' },
    -- ['<S-Tab>'] = { 'show_and_insert_or_accept_single', 'select_prev' },

    ['<C-space>'] = { 'show', 'hide' },

    ['<C-n>'] = { 'select_next', 'fallback' },
    ['<C-p>'] = { 'select_prev', 'fallback' },

    ['<C-y>'] = { 'select_and_accept', 'fallback' },
    ['<C-e>'] = { 'cancel', 'fallback' },
  },

	completion = {
		ghost_text = { enabled = true, show_with_menu = false },
		documentation = { auto_show = true, auto_show_delay_ms = 500 },
		keyword = { range = 'full' },	-- prefix|full
		accept = { auto_brackets = { enabled = false }, },
		list = { selection = { preselect = true, auto_insert = false } },
		menu = {
			auto_show = false,
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
