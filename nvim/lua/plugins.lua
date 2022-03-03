require'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'monsonjeremy/onedark.nvim'
    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
    }

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }


    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'simrat39/rust-tools.nvim'

    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
end)

require('plugins/onedark')
require('plugins/vimline')
require('plugins/treesitter')
require('plugins/nvim-tree')
require('plugins/nvim-lspconfig')
require('plugins/nvim-cmp')
require('plugins/rust-tools')
require('plugins/telescope')
require('plugins/bufferline')
