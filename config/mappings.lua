M.mappings = {}

local opts = { noremap = true, silent = true }

M.mappings.core = function ()
  -- Copy and paste to system clipboard
  keymap('n', 'y', '"+y', opts)
  keymap('n', 'p', '"+p', opts)

  -- Keep cursor centered when scrolling
  keymap("n", "<C-d>", "<C-d>zz", opts)
  keymap("n", "<C-u>", "<C-u>zz", opts)
end

M.mappings.core()
