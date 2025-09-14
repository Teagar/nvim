return {
	blocked = {
		buftypes = { "nofile" },	-- Disable indent in nofile buffers
		filetypes = { "help" },
	},
	static = {
		enabled = true,
		char = icons.ui.LineLeft,
		priority = 1,
		highlights = { 'BlinkIndent' },
	},
	scope = {
		enabled = true,
		char = icons.ui.BoldLineLeft,
		priority = 1024,
		highlights = {
			'BlinkIndentOrange',
			'BlinkIndentViolet',
			'BlinkIndentBlue',
		},
		underline = {
			enabled = false,
			highlights = {
				'BlinkIndentOrangeUnderline',
				'BlinkIndentVioletUnderline',
				'BlinkIndentBlueUnderline',
			},
		},
	},
}
