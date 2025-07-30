M.utils.setup_core = function()
    require('core.mason-path')
    require('core.lsp')
    require('config.settings')
    require('config.mappings')
    require('config.functions')
    require('core.lazy')
end

-- Main setup
M.utils.setup_core()
