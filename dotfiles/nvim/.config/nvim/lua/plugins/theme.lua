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
      require("void_neon")
    end,
  },
}
