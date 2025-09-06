M.mappings = {}

M.mappings.core = function ()
 -- keymap('n', 'op', 'o<Esc>k', 	{ noremap = true, silent = true, desc = "Add an empty line below" })
 -- keymap('n', 'oi', 'O<Esc>j', 	{ noremap = true, silent = true, desc = "Add an empty line above" })
  keymap('n', 'oo', 'A<CR>', 	{ noremap = true, silent = true, desc = "Insert above" })

  -- Copy and paste to system clipboard
  keymap('n', 'y', '"+y', { noremap = true, silent = true })
  keymap('n', 'p', '"+p', { noremap = true, silent = true })
end

M.mappings.buffer_control = function ()
  keymap('n', 'tn', ':bnext<CR>', { noremap = true, silent = true, desc = 'Go to next buffer'})
  keymap('n', 'tp', ':bprevious<CR>', { noremap = true, silent = true, desc = 'Go to previous buffer'})
  keymap('n', 'td', ':bdelete<CR>', { noremap = true, silent = true, desc = 'Delete the current buffer'})
  keymap('n', 'tad', ':bufdo bd<CR>', { noremap = true, silent = true, desc = 'Delete all buffers'})
  keymap('n', '<leader>b', ':buffers<CR>', { noremap = true, silent = true, desc = 'Show all buffers'})
end

M.mappings.core()
M.mappings.buffer_control()
