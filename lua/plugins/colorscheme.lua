return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		local tokyonight = require("tokyonight")
		tokyonight.setup({
			on_colors = function(colors)
				colors.bg = "#111219"
			end,
		})
		vim.cmd([[colorscheme tokyonight-moon]])
	end,
}
-- return {
-- 	"scottmckendry/cyberdream.nvim",
-- 	lazy = false,
-- 	priority = 1000,
--
-- 	config = function()
-- 		local cyberdream = require("cyberdream")
--
-- 		cyberdream.setup({
-- 		    transparent = true
-- 		})
--
-- 		vim.cmd("colorscheme cyberdream")
-- 	end,
-- }

-- return {
-- 	"navarasu/onedark.nvim",
-- 	lazy = false,
-- 	priority = 1000,
--
-- 	config = function()
-- 		local onedark = require("onedark")
-- 		onedark.setup({
-- 			style = "deep",
-- 			transparent = true,
-- 		})
-- 		onedark.load()
--
-- 		-- vim.cmd("colorscheme cyberdream")
-- 	end,
-- }
--
-- return {
-- 	"marko-cerovac/material.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		local material = require("material")
-- 		material.setup({})
-- 		vim.cmd("colorscheme material")
-- 	end,
-- }
-- return {
-- 	"navarasu/onedark.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
-- 	config = function()
-- 		local onedark = require("onedark")
-- 		onedark.setup({
-- 			style = "darker",
-- 			term_colors = true,
-- 			toggle_style_key = "<leader>ts",
-- 			toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" },
-- 		})
-- 		onedark.load()
-- 	end,
-- }
