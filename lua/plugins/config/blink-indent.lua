return {
	blocked = {
		buftypes = {},
		filetypes = {"txt"},
	},
	static = {
		enabled = true,
		char = icons.ui.LineLeft,
		priority = 1,
		highlights = { 'BlinkIndent' },
	},
	scope = {
		enabled = false,
		char = icons.ui.LineLeft,
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
