-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use { 'rose-pine/neovim', as = 'rose-pine', }
    use { "ellisonleao/gruvbox.nvim" }


    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }

    use 'nvim-treesitter/nvim-treesitter-context'

    use "folke/zen-mode.nvim"
    use "theprimeagen/harpoon"
    use "preservim/nerdcommenter"
    use "tpope/vim-surround"
    use "tpope/vim-unimpaired"
    use 'eandrju/cellular-automaton.nvim'

    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
    }

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional
        {'mfussenegger/nvim-jdtls'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
        {'hrsh7th/cmp-path'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-nvim-lua'},
        {'saadparwaiz1/cmp_luasnip'},
        {'rafamadriz/friendly-snippets'},
        {'onsails/lspkind.nvim'},
        {'hrsh7th/cmp-nvim-lsp-signature-help'},
      }
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use {
        "ThePrimeagen/refactoring.nvim",
        requires = {
            { "nvim-lua/plenary.nvim" },
            { "nvim-treesitter/nvim-treesitter" }
        }
    }

    use "laytan/cloak.nvim"
    use "mbbill/undotree"
    use "simrat39/symbols-outline.nvim"
    use "tpope/vim-fugitive"
    use "tyru/open-browser.vim"

    use 'normen/vim-pio'
    use 'xiyaowong/transparent.nvim'
    use 'christoomey/vim-tmux-navigator'

    use {
        "williamboman/mason.nvim",
        "mfussenegger/nvim-dap",
        "jay-babu/mason-nvim-dap.nvim",
        "rcarriga/nvim-dap-ui",
        "theHamsta/nvim-dap-virtual-text"
    }
    use {'nvim-telescope/telescope-ui-select.nvim' }
    use {'jedrzejboczar/possession.nvim'}

end)
