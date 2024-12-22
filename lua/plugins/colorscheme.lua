return {
  {
    "ellisonleao/gruvbox.nvim",

    priority = 1000,
    config = true,
    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = false,
      italic = {
        strings = false,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = false, -- invert background for search, diffs, statuslines and errors
      contrast = "hard",
      palette_overrides = {
        dark0_hard = "#191D24",
        dark0 = "#212730",
        dark1 = "#2A313C",
        -- dark_green = "#8EC07C",
        -- bright_green = "#C3C555",
        -- bright_red = "#E16A5C",
        -- bright_orange = "#F0974E",
      },
    },
    overrides = {},
    dim_inactive = true,
  },
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("nordic").load()
  --   end,
  -- },

  -- nord
  -- {
  --   "pedro-hga/nord.nvim",
  --   priority = 1000,
  --   config = function()
  --     require("nord").setup({})
  --   end,
  -- },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
