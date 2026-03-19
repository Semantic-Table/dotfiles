return {
  -- Disable neo-tree (LazyVim v8 uses snacks explorer by default)
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- Show hidden files in snacks explorer
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            layout = {
              layout = {
                position = "left",
                width = 0.15,
              },
            },
          },
        },
      },
    },
  },
}
