return {
  name = "ruff",
  cmd = { "ruff", "server" },
  filetypes = { "python" },
  root_markers = {
    "pyproject.toml",
    "ruff.toml",
    ".ruff.toml",
    "requirements.txt",
    ".git",
  },
  settings = {
    configurationPreference = "filesystemFirst",
    organizeImports = true,
    fixAll = true,
    lint = {
      enable = true,
      run = "onType",
    },
  },
}
