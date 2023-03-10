vim.opt.number = true

-- tab & indent
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.foldenable = true
vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 999

vim.opt.wrap = true 
vim.opt.cursorline = true
vim.opt.mouse = ''                          -- disable mouse to enable iterm copy on selection
vim.opt.clipboard:append("unnamedplus")

-- searching
vim.opt.ignorecase = true                   -- ignore uppercase letters when executing a search
vim.opt.smartcase = true                    -- ignore uppercase letters unless the search term has an uppercase letter

vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- theme
vim.o.background = "dark"                  -- light/dark
vim.g.gruvbox_dark_sidebar = false
vim.g.gruvbox_italic_comments = false
vim.g.gruvbox_italic_keywords = false
vim.cmd([[colorscheme gruvbox-flat]])


