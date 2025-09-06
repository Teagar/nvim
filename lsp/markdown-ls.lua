return {
  cmd = { "vscode-markdown-language-server", "--stdio" },
  filetypes = { "markdown" },
  root_markers = { ".git", "README.md" },
  init_options = { provideFormatter = true },
}
