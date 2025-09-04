local status_ok, _ = pcall(require, "lspconfig")
local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()
if not status_ok then
	return
end
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load({ paths = { lpath } })
require("mason").setup()
require("mason-lspconfig").setup({
  automatic_instalation = true
})

-- PHP: intelephense
lspconfig.intelephense.setup({
  on_attach = function(client, bufnr)
  end,
})

-- HTML: vscode-html-language-server
lspconfig.html.setup({
  filetypes = { "html", "php" },
  init_options = {
    configurationSection = { "html", "css", "javascript" },
    embeddedLanguages = {
      css = true,
      javascript = true
    }
  },
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
  end
})
