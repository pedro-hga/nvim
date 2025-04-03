return {
  "mfussenegger/nvim-dap",
  optional = true,
  opts = function()
    local dap = require("dap")
    dap.configurations.java = {
      {
        type = "java",
        request = "attach",
        name = "Debug (Attach) - Remote",
        hostName = "127.0.0.1",
        port = 5005,
      },
      {
        type = "java",
        request = "launch",
        name = "Launch Java Program with Input",
        mainClass = "${file}", -- Automatically detects the main class from the current file
        console = "integratedTerminal", -- Use Neovim's integrated terminal for input/output
      },
    }
  end,
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = { ensure_installed = { "java-debug-adapter", "java-test" } },
    },
  },
}
