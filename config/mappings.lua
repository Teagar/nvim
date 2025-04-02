-- Add empty lines and insert
keymap('n', 'op', 'o<Esc>k', 	{ noremap = true, silent = true, desc = "Add an empty line below" })
keymap('n', 'oi', 'O<Esc>j', 	{ noremap = true, silent = true, desc = "Add an empty line above" })
keymap('n', 'oo', 'A<CR>', 	{ noremap = true, silent = true, desc = "Insert above" })

-- Toggle NvimTree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Copy and paste to system clipboard
keymap('n', 'y', '"+y', { noremap = true, silent = true })
keymap('n', 'p', '"+p', { noremap = true, silent = true })

-- Dismiss Noice messages
keymap('n', '<leader>d', '<cmd>NoiceDismiss<CR>', { desc = "Dismiss Noice Message" })

-- Buffer Control
keymap('n', 'tn', ':bnext<CR>', { noremap = true, silent = true, desc = 'Go to next buffer'})
keymap('n', 'tp', ':bprevious<CR>', { noremap = true, silent = true, desc = 'Go to previous buffer'})
keymap('n', 'td', ':bdelete<CR>', { noremap = true, silent = true, desc = 'Delete the current buffer'})
keymap('n', 'tad', ':bufdo bd<CR>', { noremap = true, silent = true, desc = 'Delete all buffers'})
keymap('n', '<leader>b', ':Telescope buffers<CR>', { noremap = true, silent = true, desc = 'Show all buffers'})

-- Toggle Colorizer
keymap('n', '<leader>c', ':ColorizerToggle<CR>', { noremap = true, silent = true, desc = 'Toggle Colorizer'})

-- Toggle Gitsigns
keymap('n', '<leader>g', '', { noremap = true, silent = true, desc = 'Gitsigns'})
keymap('n', '<leader>gl', ':Gitsigns toggle_linehl<CR>', { noremap = true, silent = true, desc = 'Toggle Gitsigns line highlight'})
keymap('n', '<leader>gn', ':Gitsigns toggle_numhl<CR>', { noremap = true, silent = true, desc = 'Toggle Gitsigns number highlight'})
keymap('n', '<leader>gs', ':Gitsigns toggle_signs<CR>', { noremap = true, silent = true, desc = 'Toggle Gitsigns highlight'})
