vim.g.mapleader = ","
vim.keymap.set("n", "<F3>", ":NvimTreeToggle<CR>")
vim.keymap.set('n', '<leader>f', require('telescope.builtin').find_files, {})
