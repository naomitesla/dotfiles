vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  --- important default type stuffss
  use { 'wbthomason/packer.nvim' }
  use { 'nvim-treesitter/playground' }
  use { 'nvim-treesitter/nvim-treesitter',
  	{run = ':TSUpdate'}
      }
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  requires = { {'nvim-lua/plenary.nvim'} }
      }

  --- lsp config
  use {
  	'VonHeikemen/lsp-zero.nvim',
  	branch = 'v3.x',
  	requires = {
	   -- manage in nvim
    	   {'williamboman/mason.nvim'},
	   {'williamboman/mason-lspconfig.nvim'},

	    -- LSP Support
	    {'neovim/nvim-lspconfig'},

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},
	    {'hrsh7th/cmp-nvim-lsp'},
	    {'L3MON4D3/LuaSnip'},
   	}
      }

  --- my colorschemessss
  use { 'folke/tokyonight.nvim' }

  --- extra plugins
  use { 'tpope/vim-fugitive' }
  use { 'mbbill/undotree' }
  use { 'nvim-tree/nvim-web-devicons' }
  use { 'lukas-reineke/indent-blankline.nvim' }
  use { 'akinsho/bufferline.nvim' }
  use { 'akinsho/toggleterm.nvim' }
  use { 'nvim-lualine/lualine.nvim' }
  use { 'nvim-tree/nvim-tree.lua' } -- this is def optional, but i like itt c:
  use { 'numToStr/Comment.nvim' }
  use { 'folke/which-key.nvim' }
  use { 'windwp/nvim-autopairs' }

  --- extra, extra plugins (just basically likeee qol stuffs c:)
  use { 'RRethy/vim-illuminate' }
  use { 'goolord/alpha-nvim' }

end)
