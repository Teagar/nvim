require('neogen').setup {
    enabled = true,
    snippet_engine = "luasnip",
    languages = {
        lua = {
            template = {
                annotation_convention = "emmylua" -- for a full list of annotation_conventions, see supported-languages below,
                -- for more template configurations, see the language's configuration file in configurations/{lang}.lua
                }
        },
        php = {
            template = {
                annotation_convention = "phpdoc"
                }
        },
    }
}
