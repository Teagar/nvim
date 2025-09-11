return {
  cmd = { "laravel-ls" },
  filetypes = { "php", "blade.php" }, -- ajusta pro que você usa
  root_markers = { "composer.json", ".git" },
  init_options = { provideFormatter = true },
}
