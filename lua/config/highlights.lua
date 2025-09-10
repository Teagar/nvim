M.config.highlights = {
  transparency = g.transparent_enabled,
	theme = "cyberdream",

  highlight_groups = {
    RainbowRed = "#E06C75",
    RainbowYellow = "#E5C07B",
    RainbowBlue = "#61AFEF",
    RainbowOrange = "#D19A66",
    RainbowGreen = "#98C379",
    RainbowViolet = "#C678DD",
    RainbowCyan = "#56B6C2",
  },


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

local transparency = M.config.highlights.transparency
local theme = M.config.highlights.theme

if transparency then
  vim.cmd("colorscheme " .. theme)
end

M.config.highlights.diagnostic()
