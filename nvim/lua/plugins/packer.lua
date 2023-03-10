local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'eddyekofo94/gruvbox-flat.nvim'         -- theme
  use 'nvim-lualine/lualine.nvim'             -- status line
  use 'nvim-tree/nvim-tree.lua'               -- file navigation
  use 'nvim-treesitter/nvim-treesitter'       -- hilight
  use 'hrsh7th/nvim-cmp'                      -- completion
  use 'hrsh7th/cmp-nvim-lsp'                  -- lsp completion
  use 'hrsh7th/cmp-path'                      -- path completion
  use 'hrsh7th/cmp-buffer'                    -- buffer completion
  use 'simrat39/symbols-outline.nvim'         -- outline
  use {
    'tpope/vim-fugitive',
    requires = { {'tpope/vim-rhubarb'} }
  }
  use {
    'nvim-telescope/telescope.nvim',          -- file searching & global grep
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {                                       -- lsp
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
