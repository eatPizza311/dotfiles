return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
        local hooks = require("ibl.hooks")
        hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
        hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)

        require("ibl").setup({
            scope = {
                enabled = true,
                highlight = { "Operator", "Label" },
                exclude = {
                    language = {
                        "help",
                        "terminal",
                        "lazy",
                        "lspinfo",
                        "TelescopePrompt",
                        "TelescopeResults",
                        "mason",
                    },
                },
            },
        })
    end,
}
