return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- set keymaps
		local keymap = vim.keymap
		keymap.set("n", "<C-n>", "<cmd>Neotree filesystem toggle<CR>", { desc = "Toggle file explorer" })
	end,
}
