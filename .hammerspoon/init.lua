--- options

require("hs.ipc")

--- spoons

local spoon_install_path = hs.configdir .. "/Spoons/SpoonInstall.spoon"

if not hs.fs.attributes(spoon_install_path) then
    hs.execute(
        string.format(
            "curl -sL https://github.com/Hammerspoon/Spoons/raw/master/Spoons/SpoonInstall.spoon.zip -o /tmp/SpoonInstall.spoon.zip && unzip -oq /tmp/SpoonInstall.spoon.zip -d %s",
            hs.configdir .. "/Spoons"
        )
    )
end

hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall:andUse("EmmyLua")

--- config reload

--- kept as a global: hs.pathwatcher doesn't self-retain, so a local gets garbage collected and silently stops firing
ConfigWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", hs.reload):start()

hs.alert.show("Hammerspoon: Reload config 💯")

--- window management

--- @param win hs.window
--- @param margin number
local function center(win, margin)
    local screen = win:screen():frame()
    local frame = win:frame()

    return win:setTopLeft({
        x = math.max(screen.x + margin, screen.x + (screen.w - frame.w) / 2),
        y = math.max(screen.y + margin, screen.y + (screen.h - frame.h) / 2),
    })
end

hs.hotkey.bind({ "alt", "shift" }, "c", function() center(hs.window.focusedWindow(), 8) end)

--- @param win hs.window
--- @param margin number
local function maximize(win, margin)
    local screen = win:screen():frame()

    return win:setFrame({
        x = screen.x + margin,
        y = screen.y + margin,
        w = screen.w - margin * 2,
        h = screen.h - margin * 2,
    }, 0) --- no animation: while animating, win:frame() reports the target frame instead of the real one, which breaks center()
end

hs.hotkey.bind({ "alt", "shift" }, "return", function() center(maximize(hs.window.focusedWindow(), 8), 8) end)

--- only regular windows: popups, popovers and dialogs (e.g. in Telegram) report AXDialog / AXSystemDialog and are left alone
hs.window.filter
    .new()
    :setDefaultFilter({ visible = true, allowRoles = "AXStandardWindow" })
    :subscribe(hs.window.filter.windowCreated, function(win) center(maximize(win, 8), 8) end)

--- app launcher

--- launches the app, or focuses it if already running
local apps = {
    { { "alt", "shift" }, "e", "Finder" },
    { { "alt", "shift" }, "f", "Firefox" },
    { { "alt", "shift" }, "s", "System Settings" },
    { { "alt", "shift" }, "t", "WezTerm" },
    { { "alt", "shift" }, "x", "Telegram" },
}

for _, app in ipairs(apps) do
    hs.hotkey.bind(app[1], app[2], function() hs.application.launchOrFocus(app[3]) end)
end
