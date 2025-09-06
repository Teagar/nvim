M.config.functions = {
  relative_number = function()
    local numbertoggle = augroup("numbertoggle", { clear = true })

    -- Function to alternate relative number
    local function toggle_relative_number(enable)
      wo.relativenumber = enable and wo.number and vim.fn.mode() ~= "i"
    end

    -- Autocommands to change relative number
    autocmd({"BufEnter", "FocusGained", "InsertLeave", "WinEnter"}, {
      group = numbertoggle,
      callback = function() toggle_relative_number(true) end,
    })

    autocmd({"BufLeave", "FocusLost", "InsertEnter", "WinLeave"}, {
      group = numbertoggle,
      callback = function() toggle_relative_number(false) end,
    })
  end,

  cursorline_buffer = function ()
    local highlight_current_buffer = augroup("highlight_current_buffer", { clear = true })

    autocmd({"WinEnter"}, {
      group = highlight_current_buffer,
      callback = function() wo.cursorline = true end,
    })

    autocmd({"WinLeave"}, {
      group = highlight_current_buffer,
      callback = function() wo.cursorline = false end,
    })
  end,

}

M.config.functions.relative_number()
M.config.functions.cursorline_buffer()
