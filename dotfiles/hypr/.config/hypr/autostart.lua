-- Autostart apps
local autostart = {
    -- Audio
    "pipewire",

    -- Desktop
    "mako",
    "hyprpaper",
    "hypridle",
    "waybar",
}

local clipboard = {
    -- Clipboard history
    "wl-paste --type text --watch cliphist store",
    "wl-paste --type image --watch cliphist store",
}

local services = {
    -- # My services
}

local restore_state = {
    -- Restore hardware state
    "hardware-state restore",
}

local apps = {
    -- Autostart apps
    terminal,
    terminal,
}

local function start(cmds)
    for _, cmd in ipairs(cmds) do
        hl.exec_cmd(cmd)
    end
end

hl.on("hyprland.start", function()
    start(autostart)
    start(clipboard)
    start(services)
    start(restore_state)
    start(apps)
end)

