-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use('numToStr/Comment.nvim')
    use("stevearc/oil.nvim")
    use("windwp/nvim-autopairs")
    use('dag/vim-fish')
    use('907th/vim-auto-save')
    use('mrjones2014/smart-splits.nvim')
    use("folke/which-key.nvim")
    use('lervag/vimtex')
    use('SirVer/ultisnips')
    use('preservim/tagbar')
    use('ThePrimeagen/vim-be-good')
    use('ggandor/leap.nvim')
    use('tpope/vim-repeat')
    use('Wansmer/treesj')
    use{ "kylechui/nvim-surround", tag = "*", }
    use{ 'goolord/alpha-nvim', requires = 'nvim-tree/nvim-web-devicons' }
    use{ "akinsho/toggleterm.nvim", tag = '*' }
    use{ 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }
    use({
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
            { 's1n7ax/nvim-window-picker', version = '2.*'}}})


    -- Colorschemes
    use('hgoose/onedark-fk.vim')
    use('ellisonleao/gruvbox.nvim')
    use('hgoose/gruv.nvim')
    use('artanikin/vim-synthwave84')
    use('https://github.com/Mofiqul/vscode.nvim.git')
    use('Mofiqul/dracula.nvim')
    use('catppuccin/nvim')
    use{ 'Everblush/nvim', as = 'everblush' }
    use {
        'uloco/bluloco.nvim',
        requires = { 'rktjmp/lush.nvim' }
    }
end)
