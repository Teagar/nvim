local status_ok, _ = pcall(require, "lspconfig")
local lspconfig = require("lspconfig")
if not status_ok then
	return
end

require("mason").setup()
require("mason-lspconfig").setup({
  --ensure_installed = { "lua_ls", "intelephense"},
  automatic_instalation = true
})

require('mason-lspconfig').setup_handlers({
  function(server)
    lspconfig[server].setup({})
  end,
})
