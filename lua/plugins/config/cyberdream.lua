require("cyberdream").setup(
	{
		variant = "light", -- dark|light|auto
		transparent = false,

		saturation = 1,
		italic_comments = false,
		hide_fillchars = false,     -- Replace all fillchars with ' ' for the ultimate clean look
		borderless_pickers = false,
		terminal_colors = true,
		cache = false,

		highlights = {
				Comment = { fg = "#696969", bg = "NONE", italic = true },
		},

		overrides = function(colors)
				return {
						Comment = { fg = colors.green, bg = "NONE", italic = true },
						["@property"] = { fg = colors.magenta, bold = true },
				}
		end,

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
				...
		},
	}
)
