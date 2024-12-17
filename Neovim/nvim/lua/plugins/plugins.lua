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
  { "folke/neodev.nvim" },
  { 'nvimdev/lspsaga.nvim' },

  -- Complition
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },

  --Diagnostics
  { 'nvimtools/none-ls.nvim' },
  { 'nvimtools/none-ls-extras.nvim' },

  -- UX
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  { 'echasnovski/mini.indentscope', version = false },
  { 'akinsho/bufferline.nvim',      version = "*",  dependencies = 'nvim-tree/nvim-web-devicons' },

  -- Snippets
  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp"
  },
  { "rafamadriz/friendly-snippets" },
  { 'saadparwaiz1/cmp_luasnip' },

  -- Themes
  { "catppuccin/nvim",             name = "catppuccin", priority = 1000 },
  { "ellisonleao/gruvbox.nvim" },

  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  }

}
