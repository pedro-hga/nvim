return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local colors = {
      blue = "#5EB1D4",
      cyan = "#88c0d0",
      black = "#080808",
      white = "#eceff4",
      red = "#bf616a",
      violet = "#b48ead",
      yellow = "#ebcb8b",
      grey = "#4c566a",
      orange = "#d08770",
      green = "#a3be8c",
    }

    local bubbles_theme = {
      normal = {
        a = { fg = colors.black, bg = colors.cyan },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.white },
      },

      insert = { a = { fg = colors.black, bg = colors.yellow } },
      visual = { a = { fg = colors.black, bg = colors.orange } },
      replace = { a = { fg = colors.black, bg = colors.red } },

      inactive = {
        a = { fg = colors.white, bg = colors.black },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white },
      },
    }

    require("lualine").setup({
      options = {
        theme = bubbles_theme,
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { { "mode", right_padding = 2 } },
        lualine_b = { "filename", "branch" },
        lualine_c = {
          "%=", --[[ add your center components here in place of this comment ]]
        },
        lualine_x = {},
        lualine_y = { "filetype", "progress" },
        lualine_z = {
          { "location", left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
      tabline = {},
      extensions = {},
    })
  end,
}
