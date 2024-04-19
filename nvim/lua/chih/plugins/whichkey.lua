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
            e = { name = "file explorer" },
            f = { name = "file" },
            n = { name = "no" },
            s = { name = "split/select" },
            w = { name = "session" },
            x = { name = "trouble" },
            h = { name = "git", b = "Blame line" },
            c = { name = "code/crate" },
            d = { name = "debug" },
            l = { name = "lazygit" },
            r = { name = "rename/restart" },
            t = { name = "test" },
        }, { prefix = "<leader>" })

        wk.register({
            s = { name = "select", c = "Increment selection to surrounding scope" },
            c = { name = "code" },
        }, { mode = "v", prefix = "<leader>" })
    end,
}
