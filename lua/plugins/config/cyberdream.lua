M.core = {}
return {
	variant = "dark", -- dark|light|auto

	saturation = 1,
	italic_comments = true,
	hide_fillchars = false,     -- Replace all fillchars with ' ' for the ultimate clean look
	borderless_pickers = false,
	terminal_colors = true,
	cache = false,

	highlights = {
			Constant = { fg = "#969696", italic = true },
			Comment = { fg = "#969696", italic = true },
			String = { fg = "#69ff69" },
			Identifier = { fg = "#eeeeee" },
			Delimiter = { fg = "#ff9600" },
			["@punctuation.delimiter"] = { fg = "#eeeeee" },
	},

	colors = {
			bg = "#000000",
			green = "#00ff00",
			dark = {
					magenta = "#ff00ff",
					fg = "#eeeeee",
			},
			light = {
					red = "#ff5c57",
					cyan = "#5ef1ff",
			},
	},
	extensions = {
			telescope = true,
			notify = true,
			mini = true,
	},
}
