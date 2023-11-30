return {
	'tpope/vim-fugitive',   -- Git commands in nvim
	'tpope/vim-repeat',     -- Enable repeating supported plugin maps with "."
	'nvim-lualine/lualine.nvim', -- Status line
	'folke/which-key.nvim',
	'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
	'ThePrimeagen/harpoon',
	'mbbill/undotree',
	{
		'RRethy/vim-illuminate', -- Highlight all instances of the word under the cursor
		config = function()
			vim.g.Illuminate_delay = 100
		end,
	},
	'github/copilot.vim',
	'christoomey/vim-tmux-navigator', -- Seamless navigation between tmux panes and vim splits
	{ 'akinsho/toggleterm.nvim', version = '*' },
	{ 'kylechui/nvim-surround',  version = '*' },
	'lewis6991/gitsigns.nvim',
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end,
	},
	{
		'nvim-neo-tree/neo-tree.nvim',
		branch = 'v2.x',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'MunifTanjim/nui.nvim',
		},
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = function()
			require('nvim-treesitter.install').update({ with_sync = true })
		end,
	},
	'windwp/nvim-autopairs', -- Insert or delete brackets, parens, quotes in pair
	'windwp/nvim-ts-autotag', -- Automatically close HTML tags
	{
		'VonHeikemen/lsp-zero.nvim',
		dependencies = {
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
		},
	},
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			{ 'nvim-lua/plenary.nvim' }, -- Lua utils methods shared with plugins
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
			{ 'nvim-telescope/telescope-github.nvim' },
		},
	},
	{
		'rose-pine/neovim',
	},

	{
		'lukas-reineke/indent-blankline.nvim',
		config = function()
			require('ibl').setup()
		end,
	},
	{
		'renerocksai/telekasten.nvim',
		dependencies = { 'nvim-telescope/telescope.nvim' },
	},
	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("go").setup()
		end,
		event = { "CmdlineEnter" },
		ft = { "go", 'gomod' },
		build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
	},
}
