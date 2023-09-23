local version = require "mason-lspconfig.version"
return {
  'akinsho/toggleterm.nvim',
  version = "*",
  cmd = "ToggleTerm",
  keys = {
    {"<Ctr>t", "ToggleTerm"}
  },
  opts = {
    open_mapping = [[<Ctr>t]],
    direction = "float",
    hide_number = "true",
  }
}

