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
  }

  --vim.cmd("colorscheme cyberdream")
}

if M.config.highlights.transparency then
  hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
end

