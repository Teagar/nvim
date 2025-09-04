local transparency = false

local highlight_groups = {
  RainbowRed = "#E06C75",
  RainbowYellow = "#E5C07B",
  RainbowBlue = "#61AFEF",
  RainbowOrange = "#D19A66",
  RainbowGreen = "#98C379",
  RainbowViolet = "#C678DD",
  RainbowCyan = "#56B6C2",
}

local hooks = require "ibl.hooks"

-- Create highlight groups and set up scope highlighting
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  for name, color in pairs(highlight_groups) do
    hl(0, name, { fg = color })
  end
end)

g.rainbow_delimiters = { highlight = vim.tbl_keys(highlight_groups) }
require("ibl").setup { scope = { highlight = vim.tbl_keys(highlight_groups) } }

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

vim.cmd("colorscheme cyberdream")

if transparency then
  hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
end
