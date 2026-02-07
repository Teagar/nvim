require("mason").setup(
	{
    -- Roslyn registries for C#
    registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
    },
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
