-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- q: Save file
vim.keymap.set("n", "q", ":write<CR>", { noremap = true, silent = true })

-- <space>r: Reset buffer
vim.keymap.set("n", "<leader>r", ":e!<CR>", { desc = "Reset buffer" })

