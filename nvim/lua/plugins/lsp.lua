require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "gopls",
    "pylsp",
    "kotlin_language_server",
  },
})

require("lspconfig").lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}
require("lspconfig").pylsp.setup {}
require("lspconfig").gopls.setup {}
require("lspconfig").kotlin_language_server.setup {}
