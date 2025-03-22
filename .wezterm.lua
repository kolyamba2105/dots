local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = 600 })
config.font_size = 14
config.hide_tab_bar_if_only_one_tab = false
config.max_fps = 240
config.native_macos_fullscreen_mode = true
config.tab_max_width = 128
config.use_fancy_tab_bar = false
config.window_background_opacity = 0.999 -- Fixes MacOS animation lag
config.window_decorations = "RESIZE"
config.window_padding = { bottom = "0.75cell", left = "0.75cell", right = "0.75cell", top = "0.75cell" }

--- @param path string
local function format(path) return path == "/" and path or path:sub(path:match(".*/()")) end

wezterm.on("format-tab-title", function(tab)
    local bg = "#11111b"
    local fg = "#cdd6f4"

    if tab.is_active then bg = "#1e1e2e" end

    local x = tab.active_pane.pane_id
    local y = format(tab.active_pane.current_working_dir.path)
    local z = tab.active_pane.foreground_process_name:match("([^/\\]+)$")

    local title = string.format(" [%i]  %s ->  %s ", x, y, z)

    return { { Background = { Color = bg } }, { Foreground = { Color = fg } }, { Text = title } }
end)

return config
