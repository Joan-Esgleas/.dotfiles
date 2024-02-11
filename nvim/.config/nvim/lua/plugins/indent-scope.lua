local opts = {
  draw = {
    delay = 10,
  },
  symbol = '▏',
  options = {
    border = 'both',
    indent_at_cursor = false,
    try_as_border = true,
  },
}
require('mini.indentscope').setup(opts)
