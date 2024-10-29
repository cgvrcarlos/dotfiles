return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",

	config = function()
		local highlightIndent = {
			"LightColor",
		}

		local highlightScope = {
			"BoldColor",
		}

		local hooks = require("ibl.hooks")

		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "BoldColor", { fg = "#EA999C" })
			vim.api.nvim_set_hl(0, "LightColor", { fg = "#414559" })
		end)

		require("ibl").setup({
			indent = {
				char = "┊",
				highlight = highlightIndent,
			},
			scope = {
				highlight = highlightScope,
				show_start = false,
				show_end = false,
			},
		})
	end,
}
