return require('packer').startup(function()
    use "onsails/lspkind-nvim"
    use "windwp/nvim-autopairs"
    use {
        'goolord/alpha-nvim',
        config = function()
            require'alpha'.setup(require'alpha.themes.dashboard'.opts)
        end
    }
    use {"akinsho/toggleterm.nvim"}
    use {"lewis6991/gitsigns.nvim"}
    use {"vimwiki/vimwiki"}
    use 'folke/tokyonight.nvim'
    -- Lua
    use {"folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim"}
    use {'nvim-treesitter/nvim-treesitter'}
    use {'nvim-orgmode/orgmode'}
    use 'kevinhwang91/rnvimr'
    use 'jose-elias-alvarez/nvim-lsp-ts-utils'
    use 'lervag/vimtex'
    use 'windwp/nvim-ts-autotag'
    use 'norcalli/nvim-colorizer.lua'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'wbthomason/packer.nvim'
    use {"ray-x/lsp_signature.nvim"}
    use 'hrsh7th/cmp-buffer'
    use 'mfussenegger/nvim-jdtls'
    use 'hrsh7th/cmp-calc'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'gennaro-tedesco/nvim-jqx'
    use 'hrsh7th/nvim-cmp'
    use {'michaelb/sniprun', run = 'bash ./install.sh'}
    use {'pwntester/octo.nvim', config = function() require"octo".setup() end}
    use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
    use {
        "rcarriga/vim-ultest",
        requires = {"vim-test/vim-test"},
        run = ":UpdateRemotePlugins"
    }
    use 'p00f/nvim-ts-rainbow'
    use 'mfussenegger/nvim-dap'
    use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}}
    use 'mfussenegger/nvim-dap-python'
    use 'kdheepak/lazygit.nvim'
    use 'tpope/vim-surround'
    use 'kdheepak/cmp-latex-symbols'
    use {
        'tzachar/cmp-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-cmp'
    }
    use 'github/copilot.vim'
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("trouble").setup {} end
    }

    use 'ray-x/cmp-treesitter'
    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }

    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'hrsh7th/cmp-vsnip'

    use "rafamadriz/friendly-snippets"

    use "lukas-reineke/indent-blankline.nvim"
    use 'sbdchd/neoformat'
    use {"mattn/emmet-vim"}
    use 'kyazdani42/nvim-web-devicons'
    use {'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'}}
    use {
        "folke/which-key.nvim",
        config = function() require("which-key").setup {} end
    }
    use {'phaazon/hop.nvim'}
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
end)
