return {
    "saecki/crates.nvim",
    tag = "stable",
    config = function()
        local crates = require("crates")
        local opts = { silent = true }

        crates.setup({
            src = {
                cmp = { enabled = true },
            },
            null_ls = {
                enabled = true,
                name = "crates.nvim",
            },
            popup = {
                autofocus = true,
                hide_on_select = true,
            },
        })

        vim.keymap.set("n", "<leader>rcf", crates.show_features_popup, opts)
        vim.keymap.set("n", "<leader>rcd", crates.show_dependencies_popup, opts)
        vim.keymap.set("n", "<leader>rcH", crates.open_homepage, opts)
        vim.keymap.set("n", "<leader>rcR", crates.open_repository, opts)
        vim.keymap.set("n", "<leader>rcD", crates.open_documentation, opts)
        vim.keymap.set("n", "<leader>rcC", crates.open_crates_io, opts)
    end,
}

