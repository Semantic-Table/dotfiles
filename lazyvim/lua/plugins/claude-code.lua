return {
  "carlos-rodrigo/claude-code.nvim",
  keys = {
    { "<leader>clc", "<cmd>ClaudeCodeToggle<cr>", desc = "claude: toggle" },
    { "<leader>cln", "<cmd>ClaudeCodeNew<cr>", desc = "claude: new session" },
    { "<leader>cls", "<cmd>ClaudeCodeSend<cr>", desc = "claude: send selection", mode = "v" },
    { "<leader>clv", "<cmd>ClaudeCodeVsplit<cr>", desc = "claude: open in vsplit" },
    { "<leader>clS", "<cmd>ClaudeCodeSaveSession<cr>", desc = "claude: save session" },
    { "<leader>clu", "<cmd>ClaudeCodeUpdateSession<cr>", desc = "claude: update session" },
    { "<leader>clb", "<cmd>ClaudeCodeSessions<cr>", desc = "claude: browse sessions" },
    { "<leader>clr", "<cmd>ClaudeCodeRestoreSession<cr>", desc = "claude: restore session" },
    { "<leader>clw", "<cmd>ClaudeCodeNewWithSelection<cr>", desc = "claude: new with selection", mode = "v" },
  },
  config = function()
    require("claude-code").setup({
      claude_code_cmd = "claude",
      window = {
        type = "current", -- "current", "split", "vsplit", "tabnew", "float"
        position = "right", -- "right", "left", "top", "bottom" (for splits)
        size = 80, -- columns for vsplit, lines for split
      },
      auto_scroll = true,
      save_session = true,
      auto_save_session = true, -- Auto-save on focus loss
      auto_save_notify = true, -- Show notifications when auto-saving
      session_dir = vim.fn.stdpath("data") .. "/claude-code-sessions/",
      -- Disable built-in keybindings since we're using LazyVim keys spec
      keybindings = false,
    })
  end,
}
