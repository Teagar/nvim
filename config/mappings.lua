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

local ls = require("luasnip")

vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
