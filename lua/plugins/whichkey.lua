return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,

	config = function()
		local wk = require("which-key")
		wk.register({
			f = {
				name = "file", -- optional group name
				f = "Find File", -- just a label. don't create any mapping
				g = "Live Grep",
				b = "List Buffers",
				h = "Help Tags",
			},
			g = {
				name = "general",
				f = "Format",
				d = "Definition",
			},
			d = {
				name = "debug",
				t = "Breakpoint",
				c = "Continue",
			},
			c = {
				name = "code",
				a = "Action",
			},
            r = {
                name = "rust",
                c = {
                    name = "crate",
                    f = "Show features",
                    d = "Show dependencies",
                    H = "Open homepage",
                    R = "Open repository",
                    D = "Open documentation",
                    C = "Open crate.io",
                }
            }
		}, { prefix = "<leader>" })
	end,
}
