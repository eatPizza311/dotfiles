return {
    "vim-test/vim-test",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "preservim/vimux" },

    config = function()
        local keymap = vim.keymap
        keymap.set("n", "<leader>tt", "<CMD>TestNearest<CR>", { desc = "Run nearest test" })
        keymap.set("n", "<leader>tT", "<CMD>TestFile<CR>", { desc = "Run all tests" })
        keymap.set("n", "<leader>ta", "<CMD>TestSuite<CR>", { desc = "Run whole test suite" })
        keymap.set("n", "<leader>tl", "<CMD>TestLast<CR>", { desc = "Run the last test" })
        keymap.set("n", "<leader>tg", "<CMD>TestVisit<CR>", { desc = "Visit last test file" })

        vim.cmd("let test#strategy = 'vimux'")
    end,
}
