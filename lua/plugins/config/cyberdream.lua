local orange = "#ff9600"
local gray = "#969696"
local green = "#69ff69"
local white = "#eeeeee"
return {
	variant = "dark", -- dark|light|auto

	saturation = 1,
	italic_comments = true,
	hide_fillchars = false,     -- Replace all fillchars with ' ' for the ultimate clean look
	borderless_pickers = false,
	terminal_colors = true,
	cache = false,

	highlights = {
			Comment = { fg = gray, italic = true },
			String = { fg = green },
			Identifier = { fg = white },
			Delimiter = { fg = orange },
			CursorLineNr = { fg = orange },
			["@punctuation.delimiter"] = { fg = white },
	},

	colors = {
			bg = "#000000",
			green = "#00ff00",
			dark = {
					magenta = "#ff00ff",
					fg = white,
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
