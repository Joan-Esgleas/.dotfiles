require('lspsaga').setup({
  ui = {
    code_action = '󰌵'
  },
  lightbulb = {
    virtual_text = false,
  },
  definition = {
    keys = {
      edit = '<CR>',
      vsplit = "<leader>v",
      split = "<leader>h",
      close = "<ESC>"
    }
  },
  finder = {
    keys = {
      toggle_or_open = '<CR>',
      vsplit = "<leader>v",
      split = "<leader>h",
      shuttle = '<Tab>',
      quit = {'<ESC>','q'},
      close = '<ESC>'
    }
  },
  rename = {
    keys = {
      quit = {'<ESC>','q'}
    }
  }
})
