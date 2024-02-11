return {
  -- Telescope (fuzzy finder)
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },

  -- Mason
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  -- LSP-zero (lsp)
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true
  },
  { 'neovim/nvim-lspconfig' },

  -- Complition
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'saadparwaiz1/cmp_luasnip' },

  -- UX
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { 'echasnovski/mini.indentscope', version = false },

  -- Snippets
  { 'L3MON4D3/LuaSnip' },

  -- Themes
  { "catppuccin/nvim",              name = "catppuccin", priority = 1000 },
  { "ellisonleao/gruvbox.nvim" },

}

