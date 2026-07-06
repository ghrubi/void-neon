-- Nice fixed size
local fixed_width = "1000"
local fixed_height = "760"
local fixed_opacity = "0.8 0.7"

-- Yazi
hl.window_rule({
  match = {
    title = "^Yazi$",
  },
  float = true,
  center = true,
  size = {fixed_width, fixed_height },
  opacity = fixed_opacity,
})

-- Lazygit
hl.window_rule({
  match = {
    title = "^Lazygit$",
  },
  float = true,
  center = true,
  size = {fixed_width, fixed_height },
  opacity = fixed_opacity,
})

-- Pulsemixer
hl.window_rule({
  match = {
    title = "^Pulsemixer$",
  },
  float = true,
  center = true,
  size = {fixed_width, fixed_height },
  opacity = fixed_opacity,
})

-- Bluetui
hl.window_rule({
  match = {
    title = "^Bluetui$"
  },
  float = true,
  center = true,
  size = {fixed_width, fixed_height },
  opacity = fixed_opacity,
})

-- Nmtui
hl.window_rule({
  match = {
    title = "^Nmtui$"
  },
  float = true,
  center = true,
  size = {fixed_width, fixed_height },
  opacity = fixed_opacity,
})

