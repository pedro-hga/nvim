return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "biome" },
      typescript = { "biome" },
      json = { "biome" },
      eruby = { "erb-formatter" },
      css = { "prettierd" },
      python = { "ast-grep" },
    },
  },
}
