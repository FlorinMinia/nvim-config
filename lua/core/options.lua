-- Tree list style for the default file viewer
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Show buffer line number relative to the cursor position
opt.relativenumber = true

-- Show the number of the buffer line where the cursor is currently placed. If false, 0 is displayed
opt.number = true

-- Tabs & indentation
opt.tabstop = 2 -- 2 spaces for one tab
opt.shiftwidth = 2 -- 2 spaces for one indent
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- when creating a new line, copy indent from previous one

-- Disable line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if mixed case in search, it assumes that you want case sensitive

-- Show cursor line
opt.cursorline = true

-- Enable terminal colors
opt.termguicolors = true

-- Set background to dark by default
opt.background = "dark"

-- Show signcolumn so that text doesn't shift
opt.signcolumn = "yes"

-- Alow Backspace on indent, end of line or insert mode start position
opt.backspace = "indent,eol,start"

-- Vertical split window to the right
opt.splitright = true

-- Horizontal split window to the bottom
opt.splitbelow = true

-- Sync with system clipboard
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus"

-- Lines of context when scrolling
opt.scrolloff = 10
