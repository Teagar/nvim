--[[
============================================================================
Buffer Debugger for Neovim
Prints information about the current buffer whenever it changes:
	- Buffer number
	- Filetype
	- Buffertype
	- Floating window status
	- Buffer name
Automatically ignores buffers with filetype "notify" and avoids repeated prints.
Supports both normal buffers and floating windows (Telescope, Mason, WhichKey, etc.)
============================================================================
]]--

-- Global state to track last printed buffer info to prevent duplicates
_G._last_buf_info = { buf = nil, ft = nil, bt = nil }

--- Prints buffer info if it changed
local function debug_bufinfo(bufnr)
    bufnr = bufnr or vim.api.nvim_get_current_buf()
    local ft = vim.bo[bufnr].filetype
    local bt = vim.bo[bufnr].buftype

    -- Ignore notify buffers
    if ft == "notify" then return end

    -- Only print if buffer info changed
    if _G._last_buf_info.buf ~= bufnr or _G._last_buf_info.ft ~= ft or _G._last_buf_info.bt ~= bt then
        local name = vim.api.nvim_buf_get_name(bufnr)
        if name == "" then name = "[No Name]" end

        -- Detect if the window is floating
        local win = vim.api.nvim_get_current_win()
        local cfg = vim.api.nvim_win_get_config(win)
        local is_float = (cfg.relative ~= "")

        print(string.format(
            "Buf %d | ft=%s | bt=%s | float=%s | name=%s",
            bufnr,
            ft,
            bt,
            tostring(is_float),
            name
        ))

        -- Update global state
        _G._last_buf_info = { buf = bufnr, ft = ft, bt = bt }
    end
end

vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
    callback = function()
        debug_bufinfo()
    end,
})

vim.api.nvim_create_autocmd("WinNew", {
    callback = function(args)
        local win = tonumber(args.match)
        if not win or not vim.api.nvim_win_is_valid(win) then return end

        local buf = vim.api.nvim_win_get_buf(win)
        debug_bufinfo(buf)
    end,
})
