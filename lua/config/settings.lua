M.config.settings = function ()
  g.mapleader = ' '
  opt.wrap = false		-- Break the line, if true, just in view mode
  opt.scrolloff = 8		-- Minimal number of screen lines to keep above and below the cursor
  opt.guicursor = ""		-- Desactivate the changes of the cursor
  opt.fillchars = {
    eob = " ",			-- Empty lines at the end of a buffer
    fold = " ",
    foldopen = icons.ui.ChevronShortDown,
    foldsep = icons.ui.BoldLineLeft,
    foldclose = icons.ui.ChevronShortRight
  }

  opt.cursorline = true
  opt.cursorlineopt = "number"	-- Set the type of cursor line (number|line|both)

  opt.completeopt = { "menu", "menuone", "noselect" }

  opt.foldlevel = 99
  opt.foldlevelstart = 99
  opt.foldmethod = "expr"
  opt.updatetime = 100		-- Update time in ms(miliseconds)

  opt.shiftwidth = 2		-- Number of spaces in a tab
  opt.smartindent = true	-- Do smart autoindenting when starting a new line

  opt.splitbelow = true
  opt.splitright = true

  opt.clipboard = "unnamedplus" -- Use the clipboard register "+" (quoteplus) 

  opt.title = true

  wo.number = true 		-- Set numbers line

  g.loaded_perl_provider = 0	-- Disable perl
  g.loaded_ruby_provider = 0	-- Disable ruby

  vim.loader.enable() 		-- Adds the Lua loader using the byte-compilation cache 
end

M.config.settings()
