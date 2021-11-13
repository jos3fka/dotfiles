call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" LSP
" -----------------------------------------------------------------------------
" Completion
Plug 'SirVer/ultisnips'
Plug 'tzachar/compe-tabnine', { 'do': './install.sh' }

" Appearance
" -----------------------------------------------------------------------------
Plug 'rktjmp/lush.nvim'
Plug 'npxbr/gruvbox.nvim'
Plug 'arcticicestudio/nord-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'kyazdani42/nvim-web-devicons'

" Navigation
" -----------------------------------------------------------------------------
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'voldikss/vim-floaterm'
Plug 'ThePrimeagen/git-worktree.nvim'

" Qol
" -----------------------------------------------------------------------------
Plug 'vimwiki/vimwiki'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'ThePrimeagen/harpoon'
Plug 'tyru/open-browser.vim'
Plug 'sbdchd/neoformat'
Plug 'mhinz/vim-signify'
Plug 'honza/vim-snippets'
Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-cheat.sh'
Plug 'szw/vim-maximizer'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'

" Misc
" -----------------------------------------------------------------------------
Plug 'nvim-treesitter/playground'

call plug#end()

" Misc configs
" -----------------------------------------------------------------------------
let mapleader=" "
colorscheme gruvbox
