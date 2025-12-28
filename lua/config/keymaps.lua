-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- q Save file
vim.keymap.set("n", "q", ":write<CR>", { noremap = true, silent = true })

-- z Redo
vim.keymap.set("n", "z", ":redo<CR>", { noremap = true, silent = true })

-- ;; Enter Normal mode
vim.keymap.set({"x", "i"}, ";;", "<esc>", { noremap = true, silent = true })

-- ;r Reset buffer
vim.keymap.set("n", ";r", ":edit!<CR>", { noremap = true, silent = true })

