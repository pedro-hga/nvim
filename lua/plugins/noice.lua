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
        row = "49%",
        col = "50%",
      },
    },
  },
})
