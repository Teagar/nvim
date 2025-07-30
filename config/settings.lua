M.options = function ()
  opt.wrap = false
  opt.scrolloff = 8
  opt.cmdheight = 1
  opt.guicursor = ''
  opt.fillchars = {
    eob = ' ',
    fold = ' ',
    foldopen = icons.ui.ChevronShortDown,
    foldsep = icons.ui.BoldLineLeft,
    foldclose = icons.ui.ChevronShortRight
  }

  opt.cursorline = true
  opt.mouse = 'a'

  opt.completeopt = { 'menu', 'menuone', 'noselect' }
  opt.foldcolumn = '0'
  opt.foldlevel = 99
  opt.foldlevelstart = 99
  opt.foldenable = true
  opt.updatetime = 100

  opt.shiftwidth = 2

  opt.smartindent = true
  opt.splitbelow = true
  opt.splitright = true

  opt.backup = false
  opt.clipboard = 'unnamedplus'
  opt.writebackup = false

  -- optionally enable 24-bit colour
  opt.termguicolors = true

  opt.fileencoding = 'utf-8'
  opt.title = true
end

M.settings = function ()

  wo.number = true

  -- disable netrw at the very start of your init.lua
  g.loaded_netrw = 1
  g.loaded_netrwPlugin = 1

  -- diasble perl
  g.loaded_perl_provider = 0

  -- disable ruby
  g.loaded_ruby_provider = 0

  vim.loader.enable() -- Bytecode loader (fast)

  vim.filetype.add({
      extension = {
	  env = "dotenv",
      },
      filename = {
	  [".env"] = "dotenv",
	  ["env"] = "dotenv",
      },
      pattern = {
	  ["[jt]sconfig.*.json"] = "jsonc",
	  ["%.env%.[%w_.-]+"] = "dotenv",
      },
  })
end

M.options()
M.settings()
