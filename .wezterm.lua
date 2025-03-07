local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = 600 })
config.font_size = 14
config.hide_tab_bar_if_only_one_tab = true
config.max_fps = 240
config.native_macos_fullscreen_mode = true
config.use_fancy_tab_bar = false
config.window_background_opacity = 0.999 -- Fixes MacOS animation lag
config.window_decorations = "RESIZE"
config.window_padding = { bottom = "0.75cell", left = "0.75cell", right = "0.75cell", top = "0.75cell" }

return config
