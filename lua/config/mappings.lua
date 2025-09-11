M.config.mappings = {

  core = function ()
    -- Copy and paste to system clipboard
    keymap.set('n', 'y', '"+y', { noremap = true, silent = true })
    keymap.set('n', 'p', '"+p', { noremap = true, silent = true })

    keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = "Toggle Nvim-Tree" })
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
    keymap.set('n', '<leader>b', ':Telescope buffers<CR>', { noremap = true, silent = true, desc = 'Show all buffers' })
  end,

	notify = function ()
		keymap.set('n', '<leader>n', '<cmd>NoiceDismiss<CR>', { desc = "Dismiss Noice Message" })
	end,

	gitsigns = function ()
		keymap.set('n', '<leader>g', '', { noremap = true, silent = true, desc = 'Gitsigns'})
		keymap.set('n', '<leader>gl', ':Gitsigns toggle_linehl<CR>', { noremap = true, silent = true, desc = 'Toggle Gitsigns line highlight'})
		keymap.set('n', '<leader>gn', ':Gitsigns toggle_numhl<CR>', { noremap = true, silent = true, desc = 'Toggle Gitsigns number highlight'})
		keymap.set('n', '<leader>gs', ':Gitsigns toggle_signs<CR>', { noremap = true, silent = true, desc = 'Toggle Gitsigns highlight'})
	end,

	telescope = function ()
		keymap.set('n', '<leader>t', '', { desc = 'Telescope' })
		keymap.set('n', '<leader>tf', ':Telescope find_files<CR>', { noremap = true, silent = true, desc = 'Find files' })
		keymap.set('n', '<leader>tg', ':Telescope live_grep<CR>', { noremap = true, silent = true, desc = 'Live grep' })
		keymap.set('n', '<leader>th', ':Telescope help_tags<CR>', { noremap = true, silent = true, desc = 'Help tags' })
		keymap.set('n', '<leader>tp', ':Telescope projects<CR>', { noremap = true, silent = true, desc = 'Show all projects' })
	end,
}

M.config.mappings.core()
M.config.mappings.buffer_control()
M.config.mappings.diagnostic()
M.config.mappings.notify()
M.config.mappings.gitsigns()
M.config.mappings.telescope()
