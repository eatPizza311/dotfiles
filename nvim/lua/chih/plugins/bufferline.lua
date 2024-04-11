return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local bufferline = require("bufferline")

		bufferline.setup({
			options = {
				separator_style = "slant",
				indicator = {
					style = "underline",
				},
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer",
						text_align = "center",
						separator = true,
					},
				},
			},
		})

		-- set keymap
		local map = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }

		-- Move to previous/next
		map("n", "<TAB>", "<Cmd>BufferLineCycleNext<CR>", opts)
		-- Magic buffer-picking mode
		map("n", "<C-p>", "<Cmd>BufferLinePick<CR>", opts)
	end,
}
