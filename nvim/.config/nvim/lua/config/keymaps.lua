local map = vim.keymap.set

---------------------
-- GENERAL
---------------------

-- Save
map("n", "<leader>w", "<cmd>write<cr>", {
  desc = "Save file",
})

-- Quit
map("n", "<leader>q", "<cmd>quit<cr>", {
  desc = "Quit",
})

-- Clear search highlight
map("n", "<Esc>", "<cmd>nohlsearch<cr>", {
  desc = "Clear search highlight",
})

---------------------
-- MODES
---------------------

-- Press "jj" in Insert Mode to return to Normal Mode.
map("i", "jj", "<Esc>", {
  desc = "Exit insert mode",
})

---------------------
-- TERMINAL
---------------------

-- Persistent full-window terminal.
local terminal_buf = nil

local function toggle_terminal()
  -- If the current buffer is the terminal,
  -- return to the previous buffer.
  if vim.bo.buftype == "terminal" then
    vim.cmd("buffer #")
    return
  end

  -- Reuse the existing terminal buffer.
  if terminal_buf and vim.api.nvim_buf_is_valid(terminal_buf) then
    vim.api.nvim_set_current_buf(terminal_buf)
    vim.cmd("startinsert")
    return
  end

  -- Create the terminal the first time.
  vim.cmd("terminal")
  terminal_buf = vim.api.nvim_get_current_buf()
  vim.cmd("startinsert")
end

-- Toggle terminal.
map("n", "<A-CR>", toggle_terminal, {
  desc = "Toggle terminal",
})

-- Optional leader shortcut.
map("n", "<leader>t", toggle_terminal, {
  desc = "Toggle terminal",
})

-- Hide terminal and return to the previous buffer
-- without killing the shell.
map("t", "<A-CR>", "<C-\\><C-n><cmd>buffer #<cr>", {
  desc = "Hide terminal",
})

-- Leave Terminal Mode while keeping the terminal visible.
map("t", "<Esc><Esc>", "<C-\\><C-n>", {
  desc = "Exit terminal mode",
})

---------------------
-- WINDOW NAVIGATION
---------------------

map("n", "<C-h>", "<C-w>h", {
  desc = "Move to left window",
})

map("n", "<C-j>", "<C-w>j", {
  desc = "Move to lower window",
})

map("n", "<C-k>", "<C-w>k", {
  desc = "Move to upper window",
})

map("n", "<C-l>", "<C-w>l", {
  desc = "Move to right window",
})

---------------------
-- BUFFER NAVIGATION
---------------------

map("n", "<C-S-h>", "<cmd>bprevious<cr>", {
  desc = "Previous buffer",
})

map("n", "<C-S-l>", "<cmd>bnext<cr>", {
  desc = "Next buffer",
})

---------------------
-- SPLITS
---------------------

map("n", "<leader>sv", "<cmd>vsplit<cr>", {
  desc = "Vertical split",
})

map("n", "<leader>sh", "<cmd>split<cr>", {
  desc = "Horizontal split",
})

map("n", "<leader>sc", "<cmd>close<cr>", {
  desc = "Close split",
})

map("n", "<leader>se", "<C-w>=", {
  desc = "Equalize split sizes",
})

---------------------
-- INDENTATION
---------------------

-- Keep text selected after indentation.
map("v", "<", "<gv", {
  desc = "Indent left and keep selection",
})

map("v", ">", ">gv", {
  desc = "Indent right and keep selection",
})

---------------------
-- MOVE LINES
---------------------

map("n", "<A-j>", ":m .+1<CR>==", {
  desc = "Move line down",
})

map("n", "<A-k>", ":m .-2<CR>==", {
  desc = "Move line up",
})

map("v", "<A-j>", ":m '>+1<CR>gv=gv", {
  desc = "Move selection down",
})

map("v", "<A-k>", ":m '<-2<CR>gv=gv", {
  desc = "Move selection up",
})

