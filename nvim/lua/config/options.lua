-- MapLeader
vim.g.mapleader = " "

-- Encoding
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Line number
vim.opt.number = true

-- Window title
vim.opt.title = true

-- Indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Search configs
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"

-- Search files
vim.opt.path:append({ "**" })

-- Backup file creation
vim.opt.backup = false

-- Status and cmd configs
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 0

-- Tabulation
vim.opt.expandtab = false
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.breakindent = true

-- Edit
vim.opt.scrolloff = 10
vim.opt.wrap = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.opt.mouse = "a"
vim.opt.backspace = { "start", "eol", "indent" }
