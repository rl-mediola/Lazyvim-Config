-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- q Write buffer to file
vim.keymap.set({"n", "x"}, "q", "<CMD>write<CR>", { noremap = true, silent = true })
-- Q Read buffer from file
vim.keymap.set("n", "Q", "<CMD>edit!<CR>", { noremap = true, silent = true })

-- Scrolling
vim.keymap.set({"n", "x"}, "<A-j>", "<C-d>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "<A-k>", "<C-u>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "<C-d>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "<C-u>", "<Nop>", { noremap = true, silent = true })
local function set_horizontal_scrolling()
local half_width = math.floor(vim.o.columns / 2)
    vim.keymap.set({'n', "x"}, '<A-h>', half_width .. 'h', { noremap = true, silent = true })
    vim.keymap.set({'n', "x"}, '<A-l>', half_width .. 'l', { noremap = true, silent = true })
end
set_horizontal_scrolling()
vim.api.nvim_create_autocmd("VimResized", {
    callback = set_horizontal_scrolling,
})

-- CTRL+u Redo
vim.keymap.set("n", "<C-u>", "<CMD>redo<CR>", { noremap = true, silent = true })

-- ;; Enter Normal mode
vim.keymap.set({"x", "i"}, ";;", "<ESC>", { noremap = true, silent = true })

-- CTRL+q Close
vim.keymap.set({"n", "x", "i"}, "<C-q>", "<CMD>quitall<CR>", { noremap = true, silent = true })

-- CTRL+c Copy
vim.keymap.set("x", "<C-c>", "y", { noremap = true, silent = true })
vim.keymap.set("n", "<C-c>", "yy", { noremap = true, silent = true })

-- Cursor movement in insert mode
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true })
