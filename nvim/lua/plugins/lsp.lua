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
    "html",
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

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', '<leader>i', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<leader>r', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").pylsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").kotlin_language_server.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

