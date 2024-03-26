require('lualine').setup {
  options = {
    theme = 'gruvbox-material',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {{'filename', path = 1 }},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'diagnostics'},
    lualine_z = {'location'},
  }
}
