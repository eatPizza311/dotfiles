return {
	"mfussenegger/nvim-dap",
	dependencies = {
		{ "rcarriga/nvim-dap-ui", dependencies = { "nvim-neotest/nvim-nio" } },
	},
	config = function()
		require("dapui").setup()

		-- open and close the windows automatically
		local dap, dapui = require("dap"), require("dapui")
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- set codelldb
		dap.adapters.codelldb = {
			type = "server",
			host = "127.0.0.1",
			port = 13000,
			executable = {
				command = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/adapter/codelldb",
				args = { "--port", "13000" },

				-- on windows you may have to uncomment this:
				-- detached = false,
			},
		}

		-- setup keymapping
		local keymap = vim.keymap
		keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
		keymap.set("n", "<Leader>dc", dap.continue, { desc = "Continue" })
	end,
}
