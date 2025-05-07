return {
	"vuki656/package-info.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("package-info").setup()

		vim.keymap.set(
			"n",
			"<leader>ns",
			"<cmd>lua require('package-info').show()<cr>",
			{ silent = true, noremap = true, desc = "Show dependency outdated versions" }
		)

		vim.keymap.set(
			"n",
			"<leader>np",
			"<cmd>lua require('package-info').change_version()<cr>",
			{ silent = true, noremap = true, desc = "Update package version" }
		)
	end,
}
