return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				-- javascript = { "eslint_d", "prettierd" },
				-- typescript = { "eslint_d", "prettierd" },
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
				javascriptreact = { "eslint_d", "prettierd" },
				typescriptreact = { "eslint_d", "prettierd" },
				-- svelte = { "prettierd" },
				-- vue = { "eslint_d", "prettierd" },
				vue = { "eslint_d" },
				css = { "eslint_d", "prettierd" },
				html = { "eslint_d", "prettierd" },
				json = { "eslint_d", "prettierd" },
				markdown = { "prettierd" },
				graphql = { "prettierd" },
				lua = { "stylua" },
				python = { "isort", "black" },
				swift = { "swiftformat" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
				lsp_format = "first",
				filter = function(client)
					return client.name == "eslint_d"
				end,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>f", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
