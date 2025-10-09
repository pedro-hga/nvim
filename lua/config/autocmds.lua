-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local augroup = vim.api.nvim_create_augroup("mygroup", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = "*",
  callback = function()
    -- Remove 'o' and 'O' from formatoptions to prevent comment continuation
    vim.opt_local.formatoptions:remove("o")
  end,
  desc = "Don't continue comments with o and O",
})
