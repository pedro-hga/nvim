return {
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "fcancelinha/nordern.nvim",
    branch = "master",
    priority = 1000,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_enable_italic = true
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
}
