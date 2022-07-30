return require('packer').startup(function()
    -- packer can manage itself
    use 'wbthomason/packer.nvim'

    -- lualine statusline.
    use { 'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Color theme plugins
    use {'dracula/vim', as =  'dracula' }

    -- NerdTree
    use { 'preservim/nerdtree',
      requires = {'Xuyuanp/nerdtree-git-plugin', 'ryanoasis/vim-devicons'}
    }

    -- auto pairs
    use 'jiangmiao/auto-pairs'

    -- NerdCommenter
    use 'tpope/vim-commentary'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    use {
      'nvim-telescope/telescope.nvim', branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- fugative
    use 'tpope/vim-fugitive'

    -- vim gutter
    use 'airblade/vim-gitgutter'

    -- vim-suround
    use 'tpope/vim-surround'

    -- html 5
    use 'othree/html5.vim'

    -- twig vim
    use 'lumiliet/vim-twig'

    -- Test suite
    use 'vim-test/vim-test'

    -- vdebug 
    use 'vim-vdebug/vdebug'

    -- cs fixer
    use 'stephpy/vim-php-cs-fixer'

    -- Lua 
    use { 'tjdevries/nlua.nvim',
        requires = {'neovim/nvim-lspconfig', 'euclidianAce/BetterLua.vim'}
    }

    -- language server
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    -- Web-Dev plugins
    use 'mattn/emmet-vim'

    use 'pangloss/vim-javascript'
    use 'leafgarland/typescript-vim'
    use 'peitalin/vim-jsx-typescript'
    use { 'styled-components/vim-styled-components', branch = 'main' }

    use 'jparise/vim-graphql'

    -- Go dev plugins
    use {'fatih/vim-go', run = ':GoUpdateBinaries' }

    if packer_bootstrap then
        require('packer').sync()
    end
  end)
