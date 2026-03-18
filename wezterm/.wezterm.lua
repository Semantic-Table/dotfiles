local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Dossier de demarrage
config.default_cwd = "C:/"

-- Font
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 12

-- Transparence sans flou
config.window_background_opacity = 0.9
config.win32_system_backdrop = "Disable"

-- Masquer la tab bar (si un seul tab) et les bordures
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"  -- enlève la barre de titre
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}

return config
