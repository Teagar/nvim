M.config.lsp = {

  front_end = function()
    lsp.enable("html-ls")
    lsp.enable("css-ls")
    lsp.enable("typescript-ls")
  end,

  back_end = function()
    lsp.enable("lua-ls")
    lsp.enable("php-ls")
  end,

  misc = function()
    -- lsp.enable("markdown-ls")
    lsp.enable("json-ls")
    lsp.enable("laravel-ls")
  end

}

M.config.lsp.front_end()
M.config.lsp.back_end()
M.config.lsp.misc()
