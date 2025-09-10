M.config.settings = function ()
	g.mapleader = ' '
  g.maplocalleader = "\\"
  g.netrw_banner = 0            -- Remove netrw banner for cleaner looking
  opt.wrap = false              -- Break the line, if true, just in view mode
  opt.scrolloff = 8             -- Minimal number of screen lines to keep above and below the cursor
  opt.guicursor = ""            -- Desactivate the changes of the cursor
  opt.fillchars = {
    eob = " ",                  -- Empty lines at the end of a buffer
    fold = " ",
    foldopen = icons.ui.ChevronShortDown,
    foldsep = icons.ui.BoldLineLeft,
    foldclose = icons.ui.ChevronShortRight
  }

  opt.list = true               -- Use special characters to represent things like tabs or trailing spaces
  opt.listchars = {
    tab = icons.ui.Blank .. icons.ui.Blank,
		trail = icons.ui.Dot,
    extends = icons.ui.DoubleChevronRight,
    precedes = icons.ui.DoubleChevronLeft,
  }

  opt.cursorline = true
  opt.cursorlineopt = "number"  -- Set the type of cursor line (number|line|both)

  opt.completeopt = { "menu", "menuone", "noselect" }
  opt.pumheight = 10            -- Max height of completion menu

  opt.foldlevel = 99            -- Start editing with all folds opened
  opt.foldlevelstart = 99
  opt.foldmethod = "expr"       -- Use tree-sitter for folding method
  opt.updatetime = 100          -- Update time in ms(miliseconds)

  opt.tabstop = 2               -- Fix the tab char
  opt.shiftwidth = 2            -- Number of spaces in a tab
  opt.smartindent = true        -- Do smart autoindenting when starting a new line

  opt.splitbelow = true
  opt.splitright = true

  opt.clipboard = "unnamedplus" -- Use the clipboard register "+" (quoteplus) 

  opt.title = true

  wo.number = true              -- Set numbers line

  g.loaded_perl_provider = 0    -- Disable perl
  g.loaded_ruby_provider = 0    -- Disable ruby

  vim.loader.enable()           -- Adds the Lua loader using the byte-compilation cache 
end

M.config.settings()
