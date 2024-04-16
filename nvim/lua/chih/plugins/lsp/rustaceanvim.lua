return {
    "mrcjkb/rustaceanvim",
    version = "^3", -- Recommended
    ft = { "rust" },
    config = function()
        vim.g.rustaceanvim = {
            server = {
                on_attach = function(client, bufnr)
                    vim.lsp.inlay_hint.enable(bufnr)
                end,
            },
        }
    end,
}
