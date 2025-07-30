M.utils.setup_core = function()
    require('core.mason-path')
    require('core.lazy')
    require('core.lsp')
    require('config.settings')
    require('config.mappings')
end

-- Main setup
M.utils.setup_core()
