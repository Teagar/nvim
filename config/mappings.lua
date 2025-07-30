M.mappings = {}
M.mappings.core = function ()
  keymap('n', 'op', 'o<Esc>k', 	{ noremap = true, silent = true, desc = "Add an empty line below" })
  keymap('n', 'oi', 'O<Esc>j', 	{ noremap = true, silent = true, desc = "Add an empty line above" })
  keymap('n', 'oo', 'A<CR>', 	{ noremap = true, silent = true, desc = "Insert above" })

  -- Copy and paste to system clipboard
  keymap('n', 'y', '"+y', { noremap = true, silent = true })
  keymap('n', 'p', '"+p', { noremap = true, silent = true })
end

M.mappings.plugins = function ()
  keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = "Toggle NvimTree" })
  keymap('n', '<leader>d', '<cmd>NoiceDismiss<CR>', { desc = "Dismiss Noice Message" })
  keymap('n', '<leader>c', ':ColorizerToggle<CR>', { noremap = true, silent = true, desc = 'Toggle Colorizer'})
end

M.mappings.buffer_control = function ()
  keymap('n', 'tn', ':bnext<CR>', { noremap = true, silent = true, desc = 'Go to next buffer'})
  keymap('n', 'tp', ':bprevious<CR>', { noremap = true, silent = true, desc = 'Go to previous buffer'})
  keymap('n', 'td', ':bdelete<CR>', { noremap = true, silent = true, desc = 'Delete the current buffer'})
  keymap('n', 'tad', ':bufdo bd<CR>', { noremap = true, silent = true, desc = 'Delete all buffers'})
  keymap('n', '<leader>b', ':Telescope buffers<CR>', { noremap = true, silent = true, desc = 'Show all buffers'})
end

M.mappings.gitsigns = function ()
  keymap('n', '<leader>g', '', { noremap = true, silent = true, desc = 'Gitsigns'})
  keymap('n', '<leader>gl', ':Gitsigns toggle_linehl<CR>', { noremap = true, silent = true, desc = 'Toggle Gitsigns line highlight'})
  keymap('n', '<leader>gn', ':Gitsigns toggle_numhl<CR>', { noremap = true, silent = true, desc = 'Toggle Gitsigns number highlight'})
  keymap('n', '<leader>gs', ':Gitsigns toggle_signs<CR>', { noremap = true, silent = true, desc = 'Toggle Gitsigns highlight'})
end

M.mappings.telescope = function ()
  keymap('n', '<leader>t', '', { desc = 'Telescope' })
  keymap('n', '<leader>tf', ':Telescope find_files<CR>', { noremap = true, silent = true, desc = 'Find files' })
  keymap('n', '<leader>tg', ':Telescope live_grep<CR>', { noremap = true, silent = true, desc = 'Live grep' })
  keymap('n', '<leader>th', ':Telescope help_tags<CR>', { noremap = true, silent = true, desc = 'Help tags' })
  keymap('n', '<leader>tp', ':Telescope projects<CR>', { noremap = true, silent = true, desc = 'Show all projects' })
end

M.mappings.trouble = function ()
  keymap('n', '<leader>d', '', { desc = 'Trouble' })
  keymap('n', '<leader>dx', ':Trouble diagnostics toggle<CR>', { noremap = true, silent = true, desc = 'Diagnostics (Trouble)' })
  keymap('n', '<leader>dX', ':Trouble diagnostics toggle filter.buf=0<CR>', { noremap = true, silent = true, desc = 'Buffer Diagnostics (Trouble)' })
  keymap('n', '<leader>ds', ':Trouble symbols toggle focus=false<CR>', { noremap = true, silent = true, desc = 'Symbols (Trouble)' })
  keymap('n', '<leader>dl', ':Trouble lsp toggle focus=false win.position=right<CR>', { noremap = true, silent = true, desc = 'LSP Definitions / references / ... (Trouble)' })
  keymap('n', '<leader>dL', ':Trouble loclist toggle<CR>', { noremap = true, silent = true, desc = 'Location List (Trouble)' })
  keymap('n', '<leader>dQ', ':Trouble qflist toggle<CR>', { noremap = true, silent = true, desc = 'Quickfix List (Trouble)' })
end

M.mappings.core()
M.mappings.plugins()
M.mappings.buffer_control()
M.mappings.gitsigns()
M.mappings.telescope()
M.mappings.trouble()
