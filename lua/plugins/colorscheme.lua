return {
  -- {
  --   "xero/miasma.nvim",
  --   lazy = false,
  --   priority = 1000,
  -- },
  -- {
  --   "fcancelinha/northern.nvim",
  --   branch = "master",
  --   priority = 1000,
  -- },
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
        dark0_hard = "#152528",
      },
    },
    overrides = {},
    dim_inactive = true,
  },
  -- nordic({
  --   "AlexvZyl/nordic.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("nordic").load()
  --   end,
  -- }),

  -- nord
  {
    "pedro-hga/nord.nvim",
    priority = 1000,
    config = function()
      require("nord").setup({})
    end,
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "Yazeed1s/minimal.nvim",
  },
  {
    "Yazeed1s/oh-lucy.nvim",
  },
  {
    "kaiuri/nvim-juliana",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
