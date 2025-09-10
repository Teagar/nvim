return {
  enabled = function() return not vim.tbl_contains({ "lua", "markdown" }, vim.bo.filetype) end,
  cmdline = { enabled = false },
  completion = {
    keyword = { range = 'full' },
    accept = { auto_brackets = { enabled = false }, },
    list = { selection = { preselect = false, auto_insert = true } },
    menu = {
      auto_show = false,
      draw = {
        columns = {
          { "label", "label_description", gap = 1 },
          { "kind_icon", "kind" }
        },
      }
    },
    documentation = { auto_show = true, auto_show_delay_ms = 500 },
    ghost_text = { enabled = true },
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  snippets = { preset = 'default' | 'luasnip' | 'mini_snippets' },
  signature = { enabled = true }
}
