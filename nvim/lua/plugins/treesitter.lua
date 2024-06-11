require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "bash", "go", "markdown_inline"},
  highlight = { enable = true },
  indent = { enable = true },
}
