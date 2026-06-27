local c = require("void_neon.palette")
local hi = vim.api.nvim_set_hl

-- git
hi(0, "GitSignsAdd", { fg = c.green, bg = c.bg })
hi(0, "GitSignsChange", { fg = c.yellow, bg = c.bg })
hi(0, "GitSignsDelete", { fg = c.red, bg = c.bg })
