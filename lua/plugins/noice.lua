return {
  "folke/noice.nvim",
  -- event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  routes = {
    {
      filter = {
        event = "msg_show",
        find = "registers", -- This matches the :reg command output
      },
      opts = { skip = true }, -- Skip handling by Noice
    },
  },
  require("noice").setup({
    cmdline = {
      format = {
        cmdline = { title = "", icon = " " },
        lua = { title = "", icon = "󰢱 " },
        help = { title = "", icon = "󰋖 " },
        input = { title = "", icon = " " },
        filter = { title = "", icon = " " },
        search_up = { icon = "    " },
        search_down = { icon = "    " },
      },
    },
    views = {
      cmdline_popup = {
        position = {
          row = "10%",
          col = "50%",
        },
      },
    },
  }),
}
