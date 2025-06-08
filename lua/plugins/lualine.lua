return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local function macro_recording()
      local recording_register = vim.fn.reg_recording()
      if recording_register == "" then
        return ""
      else
        return "Recording @" .. recording_register .. " | " .. vim.fn.reg_recorded()
      end
    end
    require("lualine").setup({
      options = {
        globalstatus = true,
        icons_enabled = true,
        component_separators = {},
        section_separators = {},
        ignore_focus = {},
        always_divide_middle = true,
        refresh = {
          statusline = 100,
          tabline = 1000,
          winbar = 1000,
        },
        disabled_filetypes = {
          statuslines = {},
          winbar = {},
          "alpha",
          "lazygit",
        },
      },
      sections = {
        lualine_a = {
          "mode",
        },
        lualine_b = {
          "searchcount",
          "selectioncount",
        },
        lualine_c = {
          "filename",
          {
            "branch",
            icon = "󰊢 ",
            left_padding = 2,
          },
          "diff",
        },
        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            sections = { "hint" },
            update_in_insert = true,
            symbols = { hint = " " },
            padding = 1,
          },
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            sections = { "info" },
            update_in_insert = true,
            symbols = { info = " " },
            padding = 1,
          },
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            sections = { "warn" },
            update_in_insert = true,
            symbols = { warn = " " },
            padding = 1,
          },
          {
            "diagnostics",
            sources = { "nvim_lsp" },
            sections = { "error" },
            update_in_insert = true,
            symbols = { error = "✸  " },
            padding = 1,
          },
          { "filetype" },
          { "encoding" },
          { "location" },
        },
        lualine_y = {
          macro_recording,
        },
        lualine_z = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {
        "mason",
        "neo-tree",
        "nvim-dap-ui",
        "quickfix",
        "symbols-outline",
        "trouble",
        "lazy",
      },
    })
  end,
}
