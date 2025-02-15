return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      backdrop = 0, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    },
    plugins = {
      -- disable some global vim options (vim.o...)
      -- comment the lines to not apply the options
      options = {
        enabled = true,
        ruler = false, -- disables the ruler text in the cmd line area
        laststatus = 1, -- turn off the statusline in zen mode
      },
      wezterm = {
        enabled = false,
        font = "+4", -- (10% increase per step)
      },
    },
  },
}
