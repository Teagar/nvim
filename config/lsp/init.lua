local status_ok, _ = pcall(require, "lspconfig")
local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
if not status_ok then
	return
end
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./my-snippets" } })
require("mason").setup()
require("mason-lspconfig").setup({
  --ensure_installed = { "lua_ls", "intelephense"},
  automatic_instalation = true
})

--[[require('mason-lspconfig').setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      capabilities = capabilities
    })
  end,
})
]]--
lspconfig.phpactor.setup {
  cmd = {'~/.config/nvim/plugged/phpactor/bin/phpactor', 'language-server'}
}
