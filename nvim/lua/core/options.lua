vim.opt.number = true

-- tab & indent
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
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
vim.g.gruvbox_material_enable_italic_comment = false
vim.cmd([[colorscheme gruvbox-material]])


