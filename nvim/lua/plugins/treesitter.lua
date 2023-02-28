require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "help", "bash", "go", "kotlin"},
  highlight = { enable = true },
  indent = { enable = true },
}
