-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- m Write buffer to file (overrides marks)
vim.keymap.set({"n", "x"}, "m", "<CMD>write<CR>", { noremap = true, silent = true })
-- M Read buffer from file (overrides jump to the middle of the screen)
vim.keymap.set({"n", "x"}, "M", "<CMD>edit!<CR>", { noremap = true, silent = true })

-- Scrolling
vim.keymap.set({"n", "x"}, "<A-j>", "<C-d>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "<A-k>", "<C-u>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "<C-d>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "<C-u>", "<Nop>", { noremap = true, silent = true })
local function set_horizontal_scrolling()
local half_width = math.floor(vim.o.columns / 2)
    vim.keymap.set({"n", "x"}, "<A-h>", half_width .. "h", { noremap = true, silent = true })
    vim.keymap.set({"n", "x"}, "<A-l>", half_width .. "l", { noremap = true, silent = true })
end
set_horizontal_scrolling()
vim.api.nvim_create_autocmd("VimResized", {
    callback = set_horizontal_scrolling,
})

-- CTRL+u Redo
vim.keymap.set("n", "<C-u>", "<CMD>redo<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-r", "<Nop>", { noremap = true, silent = true })

-- ;; Enter Normal mode
vim.keymap.set({"x", "i"}, ";;", "<ESC>", { noremap = true, silent = true })

-- Cursor movement in insert mode
vim.keymap.set("i", "<A-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-l>", "<Right>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-k>", "<UP>", { noremap = true, silent = true })

-- CTRL+l delete character to the right to match with CTRL+h
vim.keymap.set("i", "<C-l>", "<DEL>", { noremap = true, silent = true })

-------------------------------------- Common editor behavior --------------------------------------
-- CTRL+q Close
vim.keymap.set({"n", "x", "i"}, "<C-q>", "<CMD>quitall<CR>", { noremap = true, silent = true })
-- CTRL+c Copy
vim.keymap.set("x", "<C-c>", "y", { noremap = true, silent = true })
vim.keymap.set("s", "<C-c>", "<C-g>y", { noremap = true, silent = true })
vim.keymap.set("n", "<C-c>", "yy", { noremap = true, silent = true })
-- CTRL+x Cut
vim.keymap.set("x", "<C-x>", "d", { noremap = true, silent = true })
vim.keymap.set("s", "<C-x>", "<C-g>d", { noremap = true, silent = true })
vim.keymap.set("n", "<C-x>", "dd", { noremap = true, silent = true })
-- CTRL+v Paste
vim.keymap.set({"n", "x"}, "<C-v>", "p", { noremap = true, silent = true })
vim.keymap.set("s", "<C-v>", "<C-g>p", { noremap = true, silent = true })
vim.keymap.set("i", "<C-v>", "<C-r>+", { noremap = true, silent = true })
-- CTRL+a Select all
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })
vim.keymap.set({"x", "i"}, "<C-a>", "<ESC>ggVG", { noremap = true, silent = true })
vim.keymap.set("s", "<C-a>", "<C-g><ESC>ggVG", { noremap = true, silent = true })
-- Shift + arrow-keys select text
vim.keymap.set("i", "<S-Left>", "<ESC>v<C-g><Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<S-Right>", "<ESC>v<C-g><Right>", { noremap = true, silent = true })

-------------------------------------- Remove unused keymaps --------------------------------------
-- up/down
vim.keymap.set({"n", "x"}, "-", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "+", "<Nop>", { noremap = true, silent = true })
-- page up/down
vim.keymap.set({"n", "x"}, "<C-f>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "<C-b>", "<Nop>", { noremap = true, silent = true })
-- marks
vim.keymap.set({"n", "x"}, "'", "<Nop>", { noremap = true, silent = true })
vim.keymap.set({"n", "x"}, "`", "<Nop>", { noremap = true, silent = true })