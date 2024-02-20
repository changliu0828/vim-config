require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "bash", "go"},
  highlight = { enable = true },
  indent = { enable = true },
}
