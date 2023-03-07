-- disable netrw at the very start of your init.lua (strongly advised)
-- vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- auto close https://github.com/nvim-tree/nvim-tree.lua/wiki/Auto-Close
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})

-- auto open https://github.com/nvim-tree/nvim-tree.lua/wiki/Open-At-Startup 
local function open_nvim_tree(data)

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  vim.cmd.cd(data.file)

  vim.cmd.ene() -- open an unnamed buffer

  require("nvim-tree.api").tree.toggle({focus = false})
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- empty setup using defaults
require("nvim-tree").setup({
  hijack_cursor = true,
  sort_by = "case_sensitive",
  git = {
    enable = true,
  },
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
    icons = {
      show = {
        file = false,
        folder = true
      },
      folder = {
        arrow_open = "",
				arrow_closed = "",
				default = "",
				open = "",
        empty = "",
			  empty_open = "",
			  symlink = "",
				symlink_open = "",
		  },
    }
  },
  update_focused_file = {
    enable = true,
  },
  on_attach = function(bufnr)
    local bufmap = function(lhs, rhs, desc)
      vim.keymap.set('n', lhs, rhs, {buffer = bufnr, desc = desc})
    end

    local api = require('nvim-tree.api')
    bufmap('x', api.node.navigate.parent_close, 'Close parent folder')
    bufmap('c', api.fs.create, 'Create node')
    bufmap('<cr>', api.node.open.edit, 'Expand folder or go to file')
  end

})
