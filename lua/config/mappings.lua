M.config.mappings = {

  core = function ()
    -- Copy and paste to system clipboard
    keymap.set('n', 'y', '"+y', { noremap = true, silent = true })
    keymap.set('n', 'p', '"+p', { noremap = true, silent = true })

    keymap.set('n', '<leader>e', ':Explore<CR>', { noremap = true, silent = true, desc = "Open netrw explorer" })
  end,

  insert = function ()
    keymap.set('n', 'op', 'o<Esc>k',    { noremap = true, silent = true, desc = "Add an empty line below" })
    keymap.set('n', 'oi', 'O<Esc>j',    { noremap = true, silent = true, desc = "Add an empty line above" })
    keymap.set('n', 'oo', 'A<CR>',      { noremap = true, silent = true, desc = "Insert above" })
  end,

  diagnostic = function ()

    local toggleVirtualLines = function()
      local new_config = not vim.diagnostic.config().virtual_lines
      vim.diagnostic.config({ virtual_lines = new_config })
    end

    local toggleVirtualText = function()
      local new_config = not vim.diagnostic.config().virtual_text
      vim.diagnostic.config({ virtual_text = new_config })
    end

    keymap.set('n', '<leader>dl', toggleVirtualLines,   { noremap = true, silent = true, desc = 'Toggle diagnostic virtual lines' })
    keymap.set('n', '<leader>dt', toggleVirtualText,    { noremap = true, silent = true, desc = 'Toggle diagnostic virtual text' })

  end,

  buffer_control = function ()
    keymap.set('n', 'tn', ':bnext<CR>',          { noremap = true, silent = true, desc = 'Go to next buffer' })
    keymap.set('n', 'tp', ':bprevious<CR>',      { noremap = true, silent = true, desc = 'Go to previous buffer' })
    keymap.set('n', 'td', ':bdelete<CR>',        { noremap = true, silent = true, desc = 'Delete the current buffer' })
    keymap.set('n', 'tad', ':bufdo bd<CR>',      { noremap = true, silent = true, desc = 'Delete all buffers' })
    keymap.set('n', '<leader>b', ':buffers<CR>', { noremap = true, silent = true, desc = 'Show all buffers' })
  end

}

M.config.mappings.core()
M.config.mappings.buffer_control()
M.config.mappings.diagnostic()
