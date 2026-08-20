return {
  cmd = { "intelephense", "--stdio" },
  filetypes = { "php" },
  root_dir = function(bufnr, on_dir)
    local bufname = vim.api.nvim_buf_get_name(bufnr)
    local dir = bufname ~= "" and vim.fn.fnamemodify(bufname, ":p:h") or vim.fn.getcwd()
    on_dir(vim.fs.root(dir, { "composer.json", ".git" }) or dir)
  end,
  settings = {
    intelephense = {
      files = {
        maxSize = 5000000,
      },
      environment = {
        phpVersion = "8.3",
      },
    },
  },
}
