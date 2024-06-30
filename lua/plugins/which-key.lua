return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		-- timeout is the time which key waits to activate
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		plugins = { spelling = true },
		defaults = {
			mode = { "n", "v" },
			["<leader>c"] = { name = "+Code actions" },
			["<leader>t"] = { name = "+Tabs" },
			["<leader>e"] = { name = "+Explore" },
			["<leader>f"] = { name = "+Find" },
			["<leader>m"] = { name = "+Format code" },
			["<leader>n"] = { name = "+Highlights" },
			["<leader>s"] = { name = "+Splits" },
			["<leader>x"] = { name = "+Trouble" },
			["<leader>w"] = { name = "+Workspace" },
			["<leader>r"] = { name = "+LSP" },
		},
	},
	config = function(_, opts)
		local wk = require("which-key")
		wk.setup(opts)
		wk.register(opts.defaults)
	end,
}
