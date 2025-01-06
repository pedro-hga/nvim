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
        dark0_hard = "#00181E",
        dark0 = "#212730",
        dark1 = "#2A313C",
        -- dark_green = "#8EC07C",
        bright_green = "#007A78",
        bright_red = "#DB4242",
        bright_orange = "#C7793A",
        bright_yellow = "#E5AE2E",
        light0_hard = "#F2F0DE",
      },
    },
    overrides = {},
    dim_inactive = true,
  },

  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        colours_override = function(palette)
          palette.bg0 = "#00181E"
        end,
      })
    end,
  },

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
