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

hs.alert.show("Hammerspoon config loaded")

--- window management

--- @param win hs.window
--- @param margin number
local function tile(win, margin)
    local screen = win:screen():frame()

    win:setFrame({
        x = screen.x + margin,
        y = screen.y + margin,
        w = screen.w - margin * 2,
        h = screen.h - margin * 2,
    })
end

hs.window.filter.new():subscribe(hs.window.filter.windowCreated, function(win) tile(win, 8) end)

hs.hotkey.bind({ "alt", "shift" }, "c", function() tile(hs.window.focusedWindow(), 128) end)

hs.hotkey.bind({ "alt", "shift" }, "return", function() tile(hs.window.focusedWindow(), 8) end)
