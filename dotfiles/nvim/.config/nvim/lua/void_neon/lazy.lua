local c = require("void_neon.palette")
local hi = vim.api.nvim_set_hl

-- lazy.nvim
hi(0, "LazyNormal", { fg = c.fg, bg = c.elevated })
hi(0, "LazyBorder", { fg = c.cyan, bg = c.elevated })
hi(0, "LazyH1", { fg = c.bg, bg = c.cyan, bold = true })
hi(0, "LazyH2", { fg = c.cyan, bg = c.surface, bold = true })
hi(0, "LazyButton", { fg = c.gray, bg = c.control })
hi(0, "LazyButtonActive", { fg = c.bg, bg = c.cyan, bold = true })
hi(0, "LazySpecial", { fg = c.cyan, bg = c.surface })
hi(0, "LazyReasonPlugin", { fg = c.gray })
hi(0, "LazyReasonStart", { fg = c.green })
hi(0, "LazyReasonEvent", { fg = c.yellow })
hi(0, "LazyReasonCmd", { fg = c.blue })
hi(0, "LazyReasonKeys", { fg = c.purple })
