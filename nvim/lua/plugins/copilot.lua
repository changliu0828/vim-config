-- require('copilot').setup({
--   panel = {
--     enabled = true,
--     auto_refresh = false,
--     keymap = {
--       jump_prev = "[[",
--       jump_next = "]]",
--       accept = "<CR>",
--       refresh = "gr",
--       open = "<M-CR>"
--     },
--     layout = {
--       position = "bottom", -- | top | left | right
--       ratio = 0.4
--     },
--   },
--   suggestion = {
--     enabled = true,
--     auto_trigger = true,
--     hide_during_completion = true,
--     debounce = 75,
--     keymap = {
--       accept = "<F1>",
--       accept_word = false,
--       accept_line = false,
--       next = "<,-]>",
--       prev = "<,-[>",
--       dismiss = "<C-]>",
--     },
--   },
--   filetypes = {
--     gitcommit = false,
--     gitrebase = false,
--     hgcommit = false,
--     ["."] = false,
--   },
--   copilot_node_command = 'node', -- Node.js version must be > 18.x
--   server_opts_overrides = {},
-- })
-- 
require("CopilotChat").setup {
  window = {
    layout = 'horizontal'
  }
}
