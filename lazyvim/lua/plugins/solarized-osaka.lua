return {
  -- add solarized-osaka
  {
    "craftzdog/solarized-osaka.nvim",
    opts = {
      transparent = true,
    },
  },

  -- add catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
    },
  },

  -- Configure LazyVim colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
