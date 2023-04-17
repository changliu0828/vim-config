vim.g.copilot_enabled = true 
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""
vim.api.nvim_set_keymap("i", "<F1>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
