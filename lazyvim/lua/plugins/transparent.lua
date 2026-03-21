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
      })

      local snacks_groups = {
        "SnacksPickerList",
        "SnacksPickerPreview",
        "SnacksPickerInput",
        "SnacksPickerBorder",
      }

      local function clear_snacks()
        for _, group in ipairs(snacks_groups) do
          vim.api.nvim_set_hl(0, group, { bg = "NONE" })
        end
      end

      vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
        callback = clear_snacks,
      })
      clear_snacks()
    end,
  },
}
