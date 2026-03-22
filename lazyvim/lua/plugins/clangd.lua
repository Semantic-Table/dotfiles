return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--query-driver=C:/Users/marvi/scoop/apps/mingw/*/bin/g*",
            "--background-index",
          },
        },
      },
    },
  },
}
