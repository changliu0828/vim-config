vim.g.mapleader = ","
vim.keymap.set("n", "<F3>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<F4>", ":SymbolsOutline<CR>")
vim.keymap.set('n', '<leader>f', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<leader>g', require('telescope.builtin').live_grep, {})
vim.keymap.set('n', '<leader>b', require('telescope.builtin').buffers, {})
vim.keymap.set('n', '<leader>gb', ":Git blame<CR>")
vim.keymap.set({'n', 'v'}, '<leader>gg', ":GBrowse<CR>")
vim.keymap.set('n', '<space>', "za")
-- vim.keymap.set('n', 'd', '"_d', { noremap = true }) -- make delete without copy
