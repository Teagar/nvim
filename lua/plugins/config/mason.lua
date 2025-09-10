require("mason").setup(
	{
		ui = {
			border = nil,
			icons = {
				package_installed = icons.ui.Check,
				package_pending = icons.ui.History,
				package_uninstalled = icons.ui.Close
			}
		}
	}
)
