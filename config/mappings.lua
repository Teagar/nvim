local keymap = vim.api.nvim_set_keymap

vim.cmd([[

" Adding an empty line below, above and below with insert
nmap op o<Esc>k
nmap oi O<Esc>j
nmap oo A<CR>

]])

keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- Mapeamento para copiar para a área de transferência
vim.api.nvim_set_keymap('n', 'y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'p', '"+p', { noremap = true, silent = true })

