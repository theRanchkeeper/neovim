return	{

	--colorscheme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,	
	},

	--telescope
	{
	    	'nvim-telescope/telescope.nvim', tag = '0.1.1',
		lazy = true,
      		dependencies = { 'nvim-lua/plenary.nvim' }
    	},

	
}
