-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  use 'wbthomason/packer.nvim'

-- autopair
  use {
    'windwp/nvim-autopairs',
    config = function()
    require('nvim-autopairs').setup()
    end
  }

-- treesitter
  use {
  	'nvim-treesitter/nvim-treesitter',
  	run = ':TSUpdate',
  }

 
  -- colorschemes
  
  use 'rafamadriz/gruvbox'

  use 'nvim-tree/nvim-tree.lua'

  use 'nvim-tree/nvim-web-devicons'

  use 'nvim-lualine/lualine.nvim'
  
  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'}}
  }

end)
