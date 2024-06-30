return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED

		vim.keymap.set("n", "<leader>ad", function()
			harpoon:list():add()
		end, { desc = "Add buffer to list" })

		vim.keymap.set("n", "<leader>ax", function()
			harpoon:list():remove(selected_entry)
		end, { desc = "Remove buffer from list" })

		vim.keymap.set("n", "<leader>al", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Show buffer list" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>ap", function()
			harpoon:list():prev()
		end, { desc = "Go to prev item" })
		vim.keymap.set("n", "<leader>an", function()
			harpoon:list():next()
		end, { desc = "Go to next item" })
	end,
}
