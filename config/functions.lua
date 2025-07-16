-- Autocomannd to alternate relative number and show actual buffer
local numbertoggle = augroup("numbertoggle", { clear = true })
local highlight_current_buffer = augroup("highlight_current_buffer", { clear = true })

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

-- Autocommands to cursorline
autocmd({"WinEnter"}, {
  group = highlight_current_buffer,
  callback = function() wo.cursorline = true end,
})

autocmd({"WinLeave"}, {
  group = highlight_current_buffer,
  callback = function() wo.cursorline = false end,
})

-- Function to move the cursor to notify's notification window 
local function go_to_notify()
  local notify_win_id = nil

  -- Find the notify's notification window
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.api.nvim_buf_get_option(buf, 'filetype') == 'notify' then
      notify_win_id = win
      break
    end
  end

  -- If the notification window is open
  if notify_win_id then
    if vim.api.nvim_get_current_win() == notify_win_id then
      vim.api.nvim_win_close(notify_win_id, true)
    else
      vim.api.nvim_set_current_win(notify_win_id)
    end
  else
    print("Notification not found!")
  end
end

-- Map to <leader>n
keymap('n', '<leader>n', '', {
  noremap = true,
  silent = true,
  callback = go_to_notify,
})

--[[Desctivate Ctrl+w to change to the notify`s window (to do)
local function skip_notify()
  local notify_win_id = nil

  -- Find the notify's notification window
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.api.nvim_buf_get_option(buf, 'filetype') == 'notify' then
      notify_win_id = win
      break
    end
  end

  -- If the notification window is open
  if notify_win_id then
    -- Verifica se o foco já está na janela de notificações
    if vim.api.nvim_get_current_win() == notify_win_id then
      -- Make a function to skip the notify windows
    else
      -- Caso contrário, muda para a janela de notificações
      vim.api.nvim_set_current_win(notify_win_id)
    end
  else
    print("Notification not found!")
  end
end
]]--

-- Highlight Current Line Number (to do)
	
--keymap('n', '<C-w>w', '', { noremap = true, silent = true })

