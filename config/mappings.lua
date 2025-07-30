M.mappings = {}
M.mappings.core = function ()
  -- Copy and paste to system clipboard
  keymap('n', 'y', '"+y', { noremap = true, silent = true })
  keymap('n', 'p', '"+p', { noremap = true, silent = true })
end

M.mappings.core()
