local wezterm = require("wezterm")

return {
  color_scheme = "Catppuccin Mocha",
  font = wezterm.font("JetBrainsMono NF", { weight = 500 }),
  font_size = 14,
  macos_window_background_blur = 75, -- Looks better when window_background_opacity < 1
  native_macos_fullscreen_mode = true,
  use_fancy_tab_bar = false,
  window_background_opacity = 0.95, -- Fixes MacOS animation lag
  window_decorations = "RESIZE",
  window_padding = { bottom = "0.75cell", left = "0.75cell", right = "0.75cell", top = "0.75cell" },
}
