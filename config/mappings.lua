-- Adding an empty line below, above and below with insert
keymap('n', 'op', 'o<Esc>k', 	{ noremap = true, silent = true, desc = "Add an empty line below" })
keymap('n', 'oi', 'O<Esc>j', 	{ noremap = true, silent = true, desc = "Add an empty line above" })
keymap('n', 'oo', 'A<CR>', 	{ noremap = true, silent = true, desc = "Insert above" })

keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Mapeamento para copiar para a área de transferência
keymap('n', 'y', '"+y', { noremap = true, silent = true })
keymap('n', 'p', '"+p', { noremap = true, silent = true })

keymap('n', '<leader>d', '<cmd>NoiceDismiss<CR>', { desc = "Dismiss Noice Message"})
