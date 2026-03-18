return {
  -- add solarized-osaka
  {
    "craftzdog/solarized-osaka.nvim",
    opts = {
      transparent = true,
    },
  },

  -- Configure LazyVim to load solarized-osaka
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}
