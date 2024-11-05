return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        local toggleterm = require("toggleterm")
        toggleterm.setup({
            open_mapping = "<C-\\>",
            start_in_insert = true,
            direction = "horizontal",
        })

        local opts = { noremap = true, silent = true }
        vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", opts)
        vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
        vim.keymap.set({ "t", "n" }, "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
        vim.keymap.set({ "t", "n" }, "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
        vim.keymap.set({ "t", "n" }, "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
        vim.keymap.set({ "t", "n" }, "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
        vim.keymap.set({ "t", "n" }, "<C-w>", [[<C-\><C-n><C-w>]], opts)
    end,
}
