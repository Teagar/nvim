return {
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = {
    "html",
    "blade",
    "javascriptreact",
    "typescriptreact",
    "svelte",
    "razor"
  },
  root_markers = { "index.html", ".git" },
  init_options = { provideFormatter = true },
}
