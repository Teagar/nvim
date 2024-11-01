-- Grupo de autocommand para alternar numeração relativa e destacar o buffer atual
local numbertoggle = augroup("numbertoggle", { clear = true })
local highlight_current_buffer = augroup("highlight_current_buffer", { clear = true })

-- Função para alternar numeração relativa
local function toggle_relative_number(enable)
  wo.relativenumber = enable and wo.number and vim.fn.mode() ~= "i"
end

-- Autocommands para alternar numeração relativa
autocmd({"BufEnter", "FocusGained", "InsertLeave", "WinEnter"}, {
  group = numbertoggle,
  callback = function() toggle_relative_number(true) end,
})

autocmd({"BufLeave", "FocusLost", "InsertEnter", "WinLeave"}, {
  group = numbertoggle,
  callback = function() toggle_relative_number(false) end,
})

-- Autocommands para cursorline
autocmd({"WinEnter"}, {
  group = highlight_current_buffer,
  callback = function() wo.cursorline = true end,
})

autocmd({"WinLeave"}, {
  group = highlight_current_buffer,
  callback = function() wo.cursorline = false end,
})


-- Função para mover o cursor para a janela de notificações do notify
local function go_to_notify()
  local notify_win_id = nil

  -- Encontra a janela de notificações do notify
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.api.nvim_buf_get_option(buf, 'filetype') == 'notify' then
      notify_win_id = win
      break
    end
  end

  -- Se a janela de notificações estiver aberta
  if notify_win_id then
    -- Verifica se o foco já está na janela de notificações
    if vim.api.nvim_get_current_win() == notify_win_id then
      -- Se estiver, fecha a janela
      vim.api.nvim_win_close(notify_win_id, true)
    else
      -- Caso contrário, muda para a janela de notificações
      vim.api.nvim_set_current_win(notify_win_id)
    end
  else
    print("Notification not found!")
  end
end

-- Mapeamento para <leader>n
keymap('n', '<leader>n', '', {
  noremap = true,
  silent = true,
  callback = go_to_notify,
})

-- Desabilitando Ctrl+w para mudar para a janela de notificações
keymap('n', '<C-w>w', '', { noremap = true, silent = true })


