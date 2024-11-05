return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,

    config = function()
        local wk = require("which-key")
        wk.add({
            { "<leader>c", group = "code/crate" },
            { "<leader>d", group = "debug" },
            { "<leader>e", group = "file explorer" },
            { "<leader>f", group = "file" },
            { "<leader>h", group = "git" },
            { "<leader>hb", desc = "Blame line" },
            { "<leader>l", group = "lazygit" },
            { "<leader>n", group = "no" },
            { "<leader>r", group = "rename/restart" },
            { "<leader>s", group = "split/select" },
            { "<leader>t", group = "test" },
            { "<leader>w", group = "session" },
            { "<leader>x", group = "trouble" },
            {
                mode = { "v" },
                { "<leader>c", group = "code" },
                { "<leader>s", group = "select" },
                { "<leader>sc", desc = "Increment selection to surrounding scope" },
            },
        })
    end,
}
