local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Mocha"
config.colors = {
    background = "#11111b",
}
config.font = wezterm.font({
    family = "JetBrainsMono Nerd Font",
    harfbuzz_features = {
        "calt=0",
        "clig=0",
        "liga=0",
    },
    weight = 600,
})
config.font_size = 16
config.keys = {
    {
        action = wezterm.action.DisableDefaultAssignment,
        mods = "ALT",
        key = "Enter",
    },
    {
        action = wezterm.action_callback(function(win, pane)
            local active_idx = 0
            local mux_window = win:mux_window()

            for _, item in ipairs(mux_window:tabs_with_info()) do
                if item.is_active then
                    active_idx = item.index

                    break
                end
            end

            mux_window:spawn_tab({
                -- sad empty table :(
            })

            win:perform_action(wezterm.action.MoveTab(active_idx + 1), pane)
        end),
        mods = "SUPER",
        key = "t",
    },
}
config.max_fps = 240
config.native_macos_fullscreen_mode = true
config.tab_bar_at_bottom = true
config.tab_max_width = 128
config.use_fancy_tab_bar = false
config.window_background_opacity = 0.999 -- Fixes MacOS animation lag
config.window_close_confirmation = "NeverPrompt"
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

    local title = string.format(" [%i] %s %s |  %s ", index, icon, path, process)

    return { { Background = { Color = bg } }, { Foreground = { Color = fg } }, { Text = title } }
end)

return config
