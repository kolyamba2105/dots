local wezterm = require("wezterm")

return {
  color_scheme = "Catppuccin Mocha",
  font = wezterm.font("JetBrainsMono Nerd Font", { weight = 600 }),
  font_size = 14,
  use_fancy_tab_bar = false,
  window_decorations = "RESIZE",
  window_padding = { bottom = "0.75cell", left = "0.75cell", right = "0.75cell", top = "0.75cell" },
}
