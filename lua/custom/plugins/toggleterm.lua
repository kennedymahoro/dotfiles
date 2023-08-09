local version = require "mason-lspconfig.version"
return {
  'akinsho/toggleterm.nvim',
  version = "*",
  cmd = "ToggleTerm",
  keys = {
    {"<Leader>t", "ToggleTerm"}
  },
  opts = {
    open_mapping = [[<Leader>t]],
    direction = "float",
    hide_number = "true",
  }
}
