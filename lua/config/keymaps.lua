local map = vim.keymap.set
local del = vim.keymap.del
local cmd = vim.cmd

-- deletions
del("n", "<S-h>") --changing buffers
del("n", "<S-l>") --changing buffers
del("n", "<C-h>") --window navigation
del("n", "<C-j>") --window navigation
del("n", "<C-k>") --window navigation
del("n", "<C-l>") --window navigation

-- misc
map("n", "W", ":w<CR>", { desc = "Save file" })
cmd("command! W w")

-- oil.nvim
map("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- window navigation
map("n", "<A-S-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<A-S-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<A-S-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<A-S-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
