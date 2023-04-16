return	{

	--colorscheme
	{
		"folke/tokyonight.nvim",
		lazy = false,
	},
    {
        "rebelot/kanagawa.nvim",
        lazy = false
    },

	--telescope aka fuzzy finder
	{
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
	},

	--treesitter
	{'nvim-treesitter/nvim-treesitter'},

	--file tree
	{'nvim-tree/nvim-tree.lua'},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
				'williamboman/mason.nvim',
				build = function()
				pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	},

    --statusline
    { 'feline-nvim/feline.nvim', branch = '0.5-compat' },

    --autopairing 
    {"windwp/nvim-autopairs"},

    --Dashboard
    {'goolord/alpha-nvim'}
}
