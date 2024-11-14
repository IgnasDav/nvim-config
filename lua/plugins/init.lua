return {
	"nvim-lua/plenary.nvim",
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },
}
