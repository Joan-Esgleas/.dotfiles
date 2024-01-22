return {
  --addgruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "catppuccin/nvim",         name = "catppuccin" },

  -- Configure to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
