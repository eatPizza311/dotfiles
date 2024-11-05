return {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    tag = "stable",
    config = function()
        local crates = require("crates")
        local opts = { silent = true }

        crates.setup({
            popup = {
                autofocus = true,
                hide_on_select = true,
            },
        })

        local keymap = vim.keymap
        opts.desc = "Show crate features popup"
        keymap.set("n", "<leader>cf", crates.show_features_popup, opts)
        opts.desc = "Show crate dependencies popup"
        keymap.set("n", "<leader>cd", crates.show_dependencies_popup, opts)
        opts.desc = "Open crate homepage"
        keymap.set("n", "<leader>cH", crates.open_homepage, opts)
        opts.desc = "Open crate repository"
        keymap.set("n", "<leader>cR", crates.open_repository, opts)
        opts.desc = "Open crate documentation"
        keymap.set("n", "<leader>cD", crates.open_documentation, opts)
        opts.desc = "Open crate.io"
        keymap.set("n", "<leader>cC", crates.open_crates_io, opts)
    end,
}
