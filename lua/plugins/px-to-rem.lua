return {
	"jsongerber/nvim-px-to-rem",
	dependencies = { "hrsh7th/nvim-cmp" },
	config = function()
		require("nvim-px-to-rem").setup({
			root_font_size = 16,
			decimal_count = 4,
			show_virtual_text = true,
			add_cmp_source = true,
			filetypes = {
				"css",
				"scss",
				"sass",
				"vue",
			},
		})
	end,
}
