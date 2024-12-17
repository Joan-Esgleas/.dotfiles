local bufferline = require('bufferline')
bufferline.setup {
  options = {
    mode = "buffers",                                       -- set to "tabs" to only show tabpages instead
    style_preset = bufferline.style_preset.default,         -- or bufferline.style_preset.minimal,
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end
  }
}
