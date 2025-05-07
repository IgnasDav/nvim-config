return {
	"NTBBloodbath/color-converter.nvim",
	opts = {},
	config = function()
		local converter = require("color-converter")

		vim.keymap.set("n", "<leader>TR", function()
			converter.to_rgb()
		end)
	end,
}
