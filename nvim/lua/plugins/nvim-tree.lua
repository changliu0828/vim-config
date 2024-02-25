-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
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

  -- create a new, empty buffer
  vim.cmd.enew()

  -- wipe the directory buffer
  vim.cmd.bw(data.buf)

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.toggle({focus = false})
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

require("nvim-tree").setup({
    hijack_cursor = true,
    hijack_netrw = false,
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
        }
    },
    update_focused_file = {
        enable = true,
        update_cwd  = true,
    },
   on_attach = function(bufnr)
       local bufmap = function(lhs, rhs, desc)
           vim.keymap.set('n', lhs, rhs, {buffer = bufnr, desc = desc})
       end

       local api = require('nvim-tree.api')
       bufmap('x', api.node.navigate.parent_close, 'Close parent folder')
       bufmap('c', api.fs.create, 'Create node')
       bufmap('<cr>', api.node.open.edit, 'Expand folder or go to file')
       bufmap('v', api.node.open.vertical, 'Open: Vertical Split')
       bufmap('d', api.fs.remove, 'Delete node')
   end

})
