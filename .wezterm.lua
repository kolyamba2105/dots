local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = 600 })
config.font_size = 14
config.hide_tab_bar_if_only_one_tab = true
config.keys = {
    {
        action = wezterm.action.ActivatePaneDirection("Left"),
        key = "h",
        mods = "LEADER",
    },
    {
        action = wezterm.action.ActivatePaneDirection("Down"),
        key = "j",
        mods = "LEADER",
    },
    {
        action = wezterm.action.ActivatePaneDirection("Up"),
        key = "k",
        mods = "LEADER",
    },
    {
        action = wezterm.action.ActivatePaneDirection("Right"),
        key = "l",
        mods = "LEADER",
    },
    {
        action = wezterm.action.ActivateTabRelative(1),
        key = "n",
        mods = "LEADER",
    },
    {
        action = wezterm.action.ActivateTabRelative(-1),
        key = "p",
        mods = "LEADER",
    },
    {
        action = wezterm.action.RotatePanes("CounterClockwise"),
        key = "[",
        mods = "LEADER",
    },
    {
        action = wezterm.action.RotatePanes("Clockwise"),
        key = "]",
        mods = "LEADER",
    },
    {
        action = wezterm.action.TogglePaneZoomState,
        key = "z",
        mods = "LEADER",
    },
    {
        action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
        key = '"',
        mods = "LEADER",
    },
    {
        action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
        key = "%",
        mods = "LEADER",
    },
}
config.leader = { key = "q", mods = "CTRL" }
config.max_fps = 240
config.native_macos_fullscreen_mode = true
config.tab_bar_at_bottom = true
config.tab_max_width = 128
config.use_fancy_tab_bar = false
config.window_background_opacity = 0.999 -- Fixes MacOS animation lag
config.window_decorations = "RESIZE"
config.window_padding = { bottom = "0.75cell", left = "0.75cell", right = "0.75cell", top = "0.75cell" }

--- @param path string
local function format(path) return path == "/" and path or path:sub(path:match(".*/()")) end

wezterm.on("format-tab-title", function(tab)
    local bg = tab.is_active and "#cba6f7" or "#11111b"
    local fg = tab.is_active and "#11111b" or "#cdd7f4"
    local icon = tab.is_active and "" or ""

    local index = tab.tab_index + 1
    local path = format(tab.active_pane.current_working_dir.path)
    local process = tab.active_pane.foreground_process_name:match("([^/\\]+)$")

    local title = string.format(" [%i] %s %s ->  %s ", index, icon, path, process)

    return { { Background = { Color = bg } }, { Foreground = { Color = fg } }, { Text = title } }
end)

return config
