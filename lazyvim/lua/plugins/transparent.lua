return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("transparent").setup({
        extra_groups = {
          "NormalFloat",
          "FloatBorder",
          "WinSeparator",
        },
        on_clear = function()
          local t = require("transparent")
          t.clear_prefix("Snacks")
        end,
      })

      local function force_transparent()
        -- Groupes à garder avec leur bg (importants visuellement)
        local keep_bg = {
          CursorLine = true,
          CursorColumn = true,
          Visual = true,
          VisualNOS = true,
          PmenuSel = true,
          IncSearch = true,
          Substitute = true,
          MatchParen = true,
          Cursor = true,
          lCursor = true,
          CursorIM = true,
          FlashLabel = true,
        }

        -- Supprimer le bg de tous les autres highlights
        local all_hls = vim.api.nvim_get_hl(0, {})
        for name, hl in pairs(all_hls) do
          if hl.bg and not keep_bg[name] then
            hl.bg = nil
            vim.api.nvim_set_hl(0, name, hl)
          end
        end
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = force_transparent,
      })
      force_transparent()
    end,
  },
}
