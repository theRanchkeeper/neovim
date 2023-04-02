return	{

	--colorscheme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,	
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
	{'nvim-tree/nvim-tree.lua'}
}
