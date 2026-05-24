M.config.highlights = {
	transparency = g.transparent_enabled or false,
	theme = "cyberdream",

  highlight_groups = {
    RainbowRed     = "#E06C75",
    RainbowYellow  = "#E5C07B",
    RainbowBlue    = "#61AFEF",
    RainbowOrange  = "#D19A66",
    RainbowGreen   = "#98C379",
    RainbowViolet  = "#C678DD",
    RainbowCyan    = "#56B6C2",
  },

	-- Verify if theme has a config and exists
	colorscheme = function(self)
		local theme = self.theme
		local theme_config_exists, opts = pcall(require, "plugins.config." .. theme)
		local theme_exists, theme_mod = pcall(require, theme)

		if theme_exists and type(theme_mod.setup) == "function" then
			theme_mod.setup(theme_config_exists and opts or {})
		end

		pcall(vim.cmd.colorscheme, theme)

	end,

  diagnostic = function ()
    vim.diagnostic.config({
      signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = icons.diagnostics.Error,
					[vim.diagnostic.severity.WARN]  = icons.diagnostics.Warning,
					[vim.diagnostic.severity.HINT]  = icons.diagnostics.Hint,
					[vim.diagnostic.severity.INFO]  = icons.diagnostics.Information,
				},
      },
    })
  end
}

M.config.highlights.diagnostic()
M.config.highlights:colorscheme()
