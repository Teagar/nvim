M.config.highlights = {
  transparency = true,

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

if M.config.highlights.transparency then
  vim.cmd("colorscheme retrobox")
  hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
  --vim.hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
end

M.config.highlights.diagnostic()
