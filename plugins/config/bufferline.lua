local bufferline = require("bufferline")
return {
  options = {
    indicator = {
      icon = icons.ui.BoldLineLeft,
      style = 'icon',
    },
    style_preset = bufferline.style_preset.default,
    buffer_close_icon = icons.ui.Close,
    close_icon = icons.ui.BoldClose,
    diagnostics = false,
    show_buffer_icons = true, -- disable filetype icons for buffers
    show_buffer_close_icons = false,
    show_close_icon = false,
    separator_style = "slope"
  }
}
