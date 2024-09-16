return {
  "nvim-lualine/lualine.nvim",

  opts = {
    options = {
      component_separators = "",
      -- section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = {
        { "mode", right_padding = 2 },
        {
          "macro",
          fmt = function()
            return vim.fn.reg_recording() ~= "" and "Recording @" .. vim.fn.reg_recording() or ""
          end,
        },
      },
      lualine_b = { "filename", "branch" },
      lualine_c = {
        "%=", --[[ add your center compoentnts here in place of this comment ]]
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
  },
}
