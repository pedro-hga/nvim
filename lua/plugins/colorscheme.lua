return {
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "ellisonleao/gruvbox.nvim",

    priority = 1000,
    config = true,
    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = true,
      italic = {
        strings = true,
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
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "hard",
      palette_overrides = {
        -- dark0_hard = "#16181b",
        -- dark0_hard = "#121212",
      },
    },
    overrides = {},
    dim_inactive = true,
  },
  -- nordic
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("nordic").load()
  --   end,
  -- },

  -- nord
  {
    "gbprod/nord.nvim",
    priority = 1000,
    config = function()
      require("nord").setup({})
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = false,
          italic = false,
          transparency = false,
        },
      })
    end,
  },
  -- --nord2
  -- {
  --   "shaunsingh/nord.nvim",
  -- },
  -- kanagawa
  -- {
  --   "rebelot/kanagawa.nvim",
  --   config = function()
  --     require("kanagawa").setup({})
  --   end,
  -- },
  -- {
  --   "sainnhe/everforest-nvim",
  -- },
  -- {
  --   "Yazeed1s/oh-lucy.nvim",
  -- },
  {
    "rmehri01/onenord.nvim",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
