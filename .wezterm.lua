local wezterm = require("wezterm")

return {
  color_scheme = "Catppuccin Mocha",
  font = wezterm.font("Iosevka Nerd Font", { weight = 500 }),
  font_size = 16,
  native_macos_fullscreen_mode = true,
  use_fancy_tab_bar = false,
  window_background_opacity = 0.999, -- Fixes MacOS animation lag
  window_decorations = "RESIZE",
  window_padding = { bottom = "0.75cell", left = "0.75cell", right = "0.75cell", top = "0.75cell" },
}
