return {
  assets = {
    lazy = {
      name = 'Lazy',
      icon = 'https://...',
      tooltip = 'lazy.nvim Plugin Manager',
      type = 'plugin_manager',
      text = function(opts) -- Dynamic text
	return 'Managing plugins in ' .. opts.name
      end,
    },
  }
}
