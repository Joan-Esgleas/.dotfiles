-- Remaps xulos
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<S-w><S-l>", vim.cmd.bnext)
vim.keymap.set("n", "<S-w><S-h>", vim.cmd.bprevious)

-- Lsp keybindigs
local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

--Snippetes keybindigs
local lua_snip = require("luasnip")
vim.keymap.set({ "i", "s" }, "<C-Right>", function()
  if lua_snip.expand_or_jumpable() then
    lua_snip.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-Left>", function()
  if lua_snip.jumpable(-1) then
    lua_snip.jump(-1)
  end
end, { silent = true })


cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    ['<Tab>'] = cmp.mapping.confirm({ select = false }),
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
  }),
})

lsp_zero.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "<leader>p", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>P", function() vim.diagnostic.goto_prev() end, opts)

  vim.keymap.set("n", "<leader>c", function() vim.cmd.Lspsaga("code_action") end, opts)

  vim.keymap.set("n", "<C-f>", function() vim.cmd.Lspsaga("finder") end, opts)

  vim.keymap.set("n", "<leader>d", function() vim.cmd.Lspsaga("hover_doc") end, opts)

  vim.keymap.set("n", "gd", function() vim.cmd.Lspsaga("peek_definition") end, opts)
  vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
  vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set("n", "<leader>rf", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.cmd.Lspsaga("rename") end, opts)
end)



local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', telescope.find_files, {})
vim.keymap.set('n', '<leader>g', telescope.live_grep, {})
