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
keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true, desc = 'Go to next buffer'})
keymap('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true, desc = 'Go to previous buffer'})
keymap('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true, desc = 'Delete the current buffer'})
