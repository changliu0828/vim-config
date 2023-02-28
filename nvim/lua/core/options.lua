vim.opt.number = true

-- tab & indent
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.mouse = 'a'                         -- enable mouse for all mode
vim.opt.clipboard:append("unnamedplus")

-- searching
vim.opt.ignorecase = true                   -- ignore uppercase letters when executing a search
vim.opt.smartcase = true                    -- ignore uppercase letters unless the search term has an uppercase letter

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- theme
vim.o.background = "dark"                  -- light/dark
vim.cmd([[colorscheme gruvbox]])
