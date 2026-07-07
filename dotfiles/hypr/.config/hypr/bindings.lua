terminal = "ghostty"
local fallback_terminal = "kitty"
local browser = "chromium --enable-features=UseOzonePlatform --ozone-platform=wayland"

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Launchers / apps
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("launcher-apps"))
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + F", hl.dsp.exec_cmd("file-manager"))
hl.bind("SUPER + G", hl.dsp.exec_cmd("tui-run lazygit"))
hl.bind("SUPER + T", hl.dsp.exec_cmd(fallback_terminal))
hl.bind("SUPER + V", hl.dsp.exec_cmd("launcher-clipboard"))
hl.bind("SUPER + O", hl.dsp.exec_cmd("launcher-files"))
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))

hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + M", hl.dsp.exit())

-- Screenshots
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind("SUPER + SHIFT + W", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("SUPER + SHIFT + M", hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind("SUPER + ALT + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m region --clipboard-only"))
hl.bind("SUPER + ALT + SHIFT + W", hl.dsp.exec_cmd("h yprshot -m window --clipboard-only"))
hl.bind("SUPER + ALT + SHIFT + M", hl.dsp.exec_cmd("hyprshot -m output --clipboard-only"))

-- Brightness keys
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightness-up")) --, { locked = true, repeatable = true }))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightness-down")) --, { locked = true, repeatable = true }))

-- Keyboard backlight
hl.bind("XF86KbdBrightnessUp", hl.dsp.exec_cmd("kbd-brightness-up")) --, { locked = true, repeatable = true }))
hl.bind("XF86KbdBrightnessDown", hl.dsp.exec_cmd("kbd-brightness-down")) --, { locked = true, repeatable = true }))

-- Volume keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("volume-up")) --, { locked = true, repeatable = true }))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("volume-down")) --, { locked = true, repeatable = true }))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("volume-toggle")) --, { locked = true }))

-- Focus windows
hl.bind("SUPER + H", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "right" }))

-- Move windows
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "down" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

-- -- Move active window to workspace
-- Loop through workspaces 1 to 10
for i = 1, 10 do
    local key = i % 10 -- Maps workspace 10 to the '0' key
    
    -- Focus workspace
    hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
    
    -- Move active window to workspace
    hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

