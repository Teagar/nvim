return {
    enabled = true,
    render_modes = { 'n', 'c', 't' },
    max_file_size = 10.0, -- MegaBytes (mb)
    debounce = 100,       -- MiliSeconds (ms)
    preset = 'none',      -- obsidian | lazy | none
    log_level = 'error',
    log_runtime = false,
    latex = { enabled = false },
    file_types = { 'markdown' },
    ignore = function()
        return false
    end,
    nested = true,
    completions = {
        blink = { enabled = false },
        lsp = { enabled = false },
    },
    heading = {
        enabled = true,
        sign = false,
        icons = {
          icons.numeric.One .. " ",
          icons.numeric.Two .. " ",
          icons.numeric.Three .. " ",
          icons.numeric.Four .. " ",
          icons.numeric.Five .. " ",
          icons.numeric.Six .. " ",
        },
        position = 'overlay',  -- right | inline | overlay
        signs = { icons.ui.Triangle },
        width = 'block',        -- full | block

        left_margin = 0,
        left_pad = 0,
        right_pad = 0,
        min_width = 0,
        border = false,
        border_virtual = false,
        border_prefix = false,
        above = '▄',
        below = '▀',
        backgrounds = {
            'RenderMarkdownH1Bg',
            'RenderMarkdownH2Bg',
            'RenderMarkdownH3Bg',
            'RenderMarkdownH4Bg',
            'RenderMarkdownH5Bg',
            'RenderMarkdownH6Bg',
        },
        foregrounds = {
            'RenderMarkdownH1',
            'RenderMarkdownH2',
            'RenderMarkdownH3',
            'RenderMarkdownH4',
            'RenderMarkdownH5',
            'RenderMarkdownH6',
        },
        custom = {},  -- pattern | icon | background | foreground
    },
    paragraph = {
        enabled = true,
        render_modes = false,
        left_margin = 0,
        indent = 0,
        min_width = 0,
    },
    code = {
        enabled = true,
        render_modes = false,
        sign = true,
        conceal_delimiters = true,
        language = true,
        position = 'left',  -- right | left
        language_icon = true,
        language_name = true,
        language_info = true,
        language_pad = 0,
        disable_background = { 'diff' },
        width = 'full', -- block | full
        left_margin = 0,
        left_pad = 0,
        right_pad = 0,
        min_width = 0,
        border = 'hide',  -- none | thick | thin | hide
        language_border = '█',
        language_left = '',
        language_right = '',
        above = '▄',
        below = '▀',
        inline = true,
        inline_left = '',
        inline_right = '',
        inline_pad = 0,
        highlight = 'RenderMarkdownCode',
        highlight_info = 'RenderMarkdownCodeInfo',
        highlight_language = nil,
        highlight_border = 'RenderMarkdownCodeBorder',
        highlight_fallback = 'RenderMarkdownCodeFallback',
        highlight_inline = 'RenderMarkdownCodeInline',
        style = 'full', -- none | normal | language | full
    },
    dash = {
        enabled = true,
        render_modes = false,
        icon = '─',
        width = 'full',
        left_margin = 0,
        highlight = 'RenderMarkdownDash',
    },
    document = {
        enabled = true,
        render_modes = false,
        conceal = {
            char_patterns = {},
            line_patterns = {},
        },
    },
    bullet = {
        enabled = true,
        render_modes = false,
        icons = {
          icons.ui.Circle,
          icons.ui.OutlineCircle,
          icons.ui.Diamond,
          icons.ui.OutlineDiamond,
        },
        left_pad = 0,
        right_pad = 0,
        highlight = 'RenderMarkdownBullet',
        scope_highlight = {},
    },
    checkbox = {
        enabled = true,
        render_modes = false,
        bullet = false,
        right_pad = 1,
        unchecked = {
            icon = icons.ui.BoxUnchecked .. " ",
            highlight = 'RenderMarkdownUnchecked',
            scope_highlight = nil,
        },
        checked = {
            icon = icons.ui.BoxChecked .. " ",
            highlight = 'RenderMarkdownChecked',
            scope_highlight = nil,
        },
        custom = {
            todo = {
              raw = icons.git.FileDeleted,
              rendered = icons.misc.Clock .. " ",
              highlight = 'RenderMarkdownTodo',
              scope_highlight = nil
            },
        },
    },
    quote = {
        enabled = true,
        render_modes = false,
        icon = '▋',
        repeat_linebreak = false,
        highlight = {
            'RenderMarkdownQuote1',
            'RenderMarkdownQuote2',
            'RenderMarkdownQuote3',
            'RenderMarkdownQuote4',
            'RenderMarkdownQuote5',
            'RenderMarkdownQuote6',
        },
    },
    pipe_table = {
        enabled = true,
        render_modes = false,
        preset = 'none',  -- heavy | double | round | none
        cell = 'padded',  -- overlay | raw | padded | trimmed
        padding = 1,
        min_width = 0,
        border = {
            '┌', '┬', '┐',
            '├', '┼', '┤',
            '└', '┴', '┘',
            '│', '─',
        },
        border_enabled = true,
        border_virtual = false,
        alignment_indicator = '━',
        head = 'RenderMarkdownTableHead',
        row = 'RenderMarkdownTableRow',
        -- filler = 'RenderMarkdownTableFill',
        style = 'full', -- none | normal | full
    },
    callout = {
        -- Callouts are a special instance of a 'block_quote' that start with a 'shortcut_link'.
        -- The key is for healthcheck and to allow users to change its values, value type below.
        -- | raw        | matched against the raw text of a 'shortcut_link', case insensitive |
        -- | rendered   | replaces the 'raw' value when rendering                             |
        -- | highlight  | highlight for the 'rendered' text and quote markers                 |
        -- | quote_icon | optional override for quote.icon value for individual callout       |
        -- | category   | optional metadata useful for filtering                              |

        note      = { raw = '[!NOTE]',      rendered = '󰋽 Note',      highlight = 'RenderMarkdownInfo',    category = 'github'   },
        tip       = { raw = '[!TIP]',       rendered = '󰌶 Tip',       highlight = 'RenderMarkdownSuccess', category = 'github'   },
        important = { raw = '[!IMPORTANT]', rendered = '󰅾 Important', highlight = 'RenderMarkdownHint',    category = 'github'   },
        warning   = { raw = '[!WARNING]',   rendered = '󰀪 Warning',   highlight = 'RenderMarkdownWarn',    category = 'github'   },
        caution   = { raw = '[!CAUTION]',   rendered = '󰳦 Caution',   highlight = 'RenderMarkdownError',   category = 'github'   },
        -- Obsidian: https://help.obsidian.md/Editing+and+formatting/Callouts
        abstract  = { raw = '[!ABSTRACT]',  rendered = '󰨸 Abstract',  highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
        summary   = { raw = '[!SUMMARY]',   rendered = '󰨸 Summary',   highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
        tldr      = { raw = '[!TLDR]',      rendered = '󰨸 Tldr',      highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
        info      = { raw = '[!INFO]',      rendered = '󰋽 Info',      highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
        todo      = { raw = '[!TODO]',      rendered = '󰗡 Todo',      highlight = 'RenderMarkdownInfo',    category = 'obsidian' },
        hint      = { raw = '[!HINT]',      rendered = '󰌶 Hint',      highlight = 'RenderMarkdownSuccess', category = 'obsidian' },
        success   = { raw = '[!SUCCESS]',   rendered = '󰄬 Success',   highlight = 'RenderMarkdownSuccess', category = 'obsidian' },
        check     = { raw = '[!CHECK]',     rendered = '󰄬 Check',     highlight = 'RenderMarkdownSuccess', category = 'obsidian' },
        done      = { raw = '[!DONE]',      rendered = '󰄬 Done',      highlight = 'RenderMarkdownSuccess', category = 'obsidian' },
        question  = { raw = '[!QUESTION]',  rendered = '󰘥 Question',  highlight = 'RenderMarkdownWarn',    category = 'obsidian' },
        help      = { raw = '[!HELP]',      rendered = '󰘥 Help',      highlight = 'RenderMarkdownWarn',    category = 'obsidian' },
        faq       = { raw = '[!FAQ]',       rendered = '󰘥 Faq',       highlight = 'RenderMarkdownWarn',    category = 'obsidian' },
        attention = { raw = '[!ATTENTION]', rendered = '󰀪 Attention', highlight = 'RenderMarkdownWarn',    category = 'obsidian' },
        failure   = { raw = '[!FAILURE]',   rendered = '󰅖 Failure',   highlight = 'RenderMarkdownError',   category = 'obsidian' },
        fail      = { raw = '[!FAIL]',      rendered = '󰅖 Fail',      highlight = 'RenderMarkdownError',   category = 'obsidian' },
        missing   = { raw = '[!MISSING]',   rendered = '󰅖 Missing',   highlight = 'RenderMarkdownError',   category = 'obsidian' },
        danger    = { raw = '[!DANGER]',    rendered = '󱐌 Danger',    highlight = 'RenderMarkdownError',   category = 'obsidian' },
        error     = { raw = '[!ERROR]',     rendered = '󱐌 Error',     highlight = 'RenderMarkdownError',   category = 'obsidian' },
        bug       = { raw = '[!BUG]',       rendered = '󰨰 Bug',       highlight = 'RenderMarkdownError',   category = 'obsidian' },
        example   = { raw = '[!EXAMPLE]',   rendered = '󰉹 Example',   highlight = 'RenderMarkdownHint' ,   category = 'obsidian' },
        quote     = { raw = '[!QUOTE]',     rendered = '󱆨 Quote',     highlight = 'RenderMarkdownQuote',   category = 'obsidian' },
        cite      = { raw = '[!CITE]',      rendered = '󱆨 Cite',      highlight = 'RenderMarkdownQuote',   category = 'obsidian' },
    },
    link = {
        enabled = true,
        render_modes = false,
        footnote = {
            enabled = true,
            superscript = true,
            prefix = '',
            suffix = '',
        },
        image = '󰥶 ',
        email = '󰀓 ',
        hyperlink = '󰌹 ',
        highlight = 'RenderMarkdownLink',
        wiki = {
            icon = '󱗖 ',
            highlight = 'RenderMarkdownWikiLink',
            scope_highlight = nil,
        },
        -- Define custom destination patterns so icons can quickly inform you of what a link
        -- contains. Applies to 'inline_link', 'uri_autolink', and wikilink nodes. When multiple
        -- patterns match a link the one with the longer pattern is used.
        -- The key is for healthcheck and to allow users to change its values, value type below.
        -- | pattern   | matched against the destination text                            |
        -- | icon      | gets inlined before the link text                               |
        -- | kind      | optional determines how pattern is checked                      |
        -- |           | pattern | @see :h lua-patterns, is the default if not set       |
        -- |           | suffix  | @see :h vim.endswith()                                |
        -- | priority  | optional used when multiple match, uses pattern length if empty |
        -- | highlight | optional highlight for 'icon', uses fallback highlight if empty |
        custom = {
            web = { pattern = '^http', icon = '󰖟 ' },
            discord = { pattern = 'discord%.com', icon = '󰙯 ' },
            github = { pattern = 'github%.com', icon = '󰊤 ' },
            gitlab = { pattern = 'gitlab%.com', icon = '󰮠 ' },
            google = { pattern = 'google%.com', icon = '󰊭 ' },
            neovim = { pattern = 'neovim%.io', icon = ' ' },
            reddit = { pattern = 'reddit%.com', icon = '󰑍 ' },
            stackoverflow = { pattern = 'stackoverflow%.com', icon = '󰓌 ' },
            wikipedia = { pattern = 'wikipedia%.org', icon = '󰖬 ' },
            youtube = { pattern = 'youtube%.com', icon = '󰗃 ' },
        },
    },
    sign = {
        enabled = true,
        highlight = 'RenderMarkdownSign',
    },
    inline_highlight = {
        enabled = true,
        render_modes = false,
        highlight = 'RenderMarkdownInlineHighlight',
    },
    indent = {
        enabled = false,
        render_modes = false,
        per_level = 2,
        skip_level = 1,
        skip_heading = false,
        icon = '▎',
        priority = 0,
        highlight = 'RenderMarkdownIndent',
    },
    html = {
        enabled = true,
        render_modes = false,
        comment = {
            conceal = true,
            text = nil,
            highlight = 'RenderMarkdownHtmlComment',
        },
        tag = {},
    },
    win_options = {
        conceallevel = {
            default = vim.o.conceallevel,
            rendered = 3,
        },
        -- @see :h 'concealcursor'
        concealcursor = {
            default = vim.o.concealcursor,
            rendered = '',
        },
    },
    overrides = {
        buflisted = {},
        buftype = {
            nofile = {
                render_modes = true,
                padding = { highlight = 'NormalFloat' },
                sign = { enabled = false },
            },
        },
        filetype = {},
    },
    custom_handlers = {
        -- Mapping from treesitter language to user defined handlers.
        -- @see [Custom Handlers](doc/custom-handlers.md)
    },
    yaml = {
        enabled = true,
        render_modes = false,
    },
}
