local hl = vim.api.nvim_set_hl
local transparency = true

if (transparency == true) then
	hl(0, 'Normal', { bg = 'NONE', ctermbg = 'NONE' })
end

