return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vim",
    },
  },

  {
    "folke/snacks.nvim",
    opts = {},
    config = function(_, opts)
      require("snacks").setup(opts)

      local c = {
        bg = "#000000",
        surface = "#050505",
        control = "#101010",
        elevated = "#080808",
        fg = "#f8fafc",
        gray = "#8a8a8a",
        dim = "#5f6368",
        cyan = "#00e5ff",
        green = "#00ff85",
        yellow = "#ffd54f",
        orange = "#ffb86c",
        red = "#ff5555",
        purple = "#b388ff",
        blue = "#5cc8ff",
      }

      local hi = vim.api.nvim_set_hl

      -- core
      hi(0, "Normal", { fg = c.fg, bg = c.bg })
      hi(0, "NormalNC", { fg = c.fg, bg = c.bg })
      hi(0, "NormalFloat", { fg = c.fg, bg = c.bg })
      hi(0, "FloatBorder", { fg = c.cyan, bg = c.bg })
      hi(0, "WinSeparator", { fg = "#1a1a1a", bg = c.bg })
      hi(0, "SignColumn", { fg = c.gray, bg = c.bg })
      hi(0, "LineNr", { fg = c.dim, bg = c.bg })
      hi(0, "CursorLineNr", { fg = c.cyan, bg = c.bg, bold = true })
      hi(0, "CursorLine", { bg = c.surface })
      hi(0, "Visual", { bg = "#12343a" })
      hi(0, "Search", { fg = c.bg, bg = c.yellow })
      hi(0, "IncSearch", { fg = c.bg, bg = c.orange })
      hi(0, "EndOfBuffer", { fg = c.bg, bg = c.bg })

      -- syntax touchups over stock vim
      hi(0, "Comment", { fg = c.dim, italic = true })
      hi(0, "Function", { fg = c.cyan })
      hi(0, "String", { fg = c.green })
      hi(0, "Type", { fg = c.cyan })
      hi(0, "Directory", { fg = c.cyan })
      hi(0, "Identifier", { fg = c.fg })
      hi(0, "Operator", { fg = c.gray })

      -- menus/popups
      hi(0, "Pmenu", { fg = c.fg, bg = c.surface })
      hi(0, "PmenuSel", { fg = c.bg, bg = c.cyan, bold = true })
      hi(0, "PmenuSbar", { bg = c.control })
      hi(0, "PmenuThumb", { bg = c.gray })

      -- diagnostics
      hi(0, "DiagnosticError", { fg = c.red })
      hi(0, "DiagnosticWarn", { fg = c.orange })
      hi(0, "DiagnosticInfo", { fg = c.cyan })
      hi(0, "DiagnosticHint", { fg = c.gray })

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
      hi(0, "NormalFloat", { fg = c.fg, bg = c.surface })
      hi(0, "FloatBorder", { fg = c.cyan, bg = c.surface })

      -- git
      hi(0, "GitSignsAdd", { fg = c.green, bg = c.bg })
      hi(0, "GitSignsChange", { fg = c.yellow, bg = c.bg })
      hi(0, "GitSignsDelete", { fg = c.red, bg = c.bg })
    end,
  },
}
