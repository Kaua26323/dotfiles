local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Interface
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "yes"

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Undo history
opt.undofile = true

-- Don't wrap long lines
opt.wrap = false

-- Responsiveness
opt.updatetime = 250
opt.timeoutlen = 300

-- Ask for confirmation instead of failing some commands
opt.confirm = true
