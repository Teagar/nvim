return {
  language = "English",
  display = {
    chat = {
      intro_message = "Welcome to CodeCompanion ✨! Press ? for options",
      icons = {
        show_context = true,
        show_header_separator = false,
        show_settings = false,
        show_token_count = true,
        show_tools_processing = true,
        start_in_insert_mode = false,
        separator = "─",
        chat_context = " ",
        buffer_sync_all = "󰪴 ",
        buffer_sync_diff = " ",
        chat_fold = " ",
        tool_pending = "  ",
        tool_in_progress = "  ",
        tool_failure = "  ",
        tool_success = "  ",
      },
      fold_context = true,
      auto_scroll = false
    }
  },

  interactions = {
      chat = {
        adapter = "copilot",
      },
      inline = {
        adapter = "copilot",
      },
      cmd = {
        adapter = "copilot",
      },
  },

  -- NOTE: The log_level is in `opts.opts`
  opts = {
    log_level = "DEBUG", -- or "TRACE"
  }
}
