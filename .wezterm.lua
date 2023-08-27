local wezterm = require("wezterm")

return {
  color_scheme = "Catppuccin Mocha",
  font = wezterm.font("JetBrainsMono Nerd Font", { weight = 500 }),
  font_size = 14,
  keys = {
    {
      action = wezterm.action.ActivateCopyMode,
      key = "c",
      mods = "CTRL|SHIFT",
    },
    {
      action = wezterm.action({ ActivatePaneDirection = "Down" }),
      key = "j",
      mods = "CTRL|SHIFT",
    },
    {
      action = wezterm.action({ ActivatePaneDirection = "Left" }),
      key = "h",
      mods = "CTRL|SHIFT",
    },
    {
      action = wezterm.action({ ActivatePaneDirection = "Right" }),
      key = "l",
      mods = "CTRL|SHIFT",
    },
    {
      action = wezterm.action({ ActivatePaneDirection = "Up" }),
      key = "k",
      mods = "CTRL|SHIFT",
    },
    {
      action = wezterm.action.SplitPane({ direction = "Down", size = { Percent = 50 } }),
      key = "DownArrow",
      mods = "CTRL|SHIFT|ALT",
    },
    {
      action = wezterm.action.SplitPane({ direction = "Left", size = { Percent = 50 } }),
      key = "LeftArrow",
      mods = "CTRL|SHIFT|ALT",
    },
    {
      action = wezterm.action.SplitPane({ direction = "Right", size = { Percent = 50 } }),
      key = "RightArrow",
      mods = "CTRL|SHIFT|ALT",
    },
    {
      action = wezterm.action.SplitPane({ direction = "Up", size = { Percent = 50 } }),
      key = "UpArrow",
      mods = "CTRL|SHIFT|ALT",
    },
  },
  native_macos_fullscreen_mode = true,
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = false,
  window_decorations = "RESIZE",
  window_padding = { bottom = "0.75cell", left = "0.75cell", right = "0.75cell", top = "0.75cell" },
}
