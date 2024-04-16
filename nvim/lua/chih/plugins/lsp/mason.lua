return {
    {
        "williamboman/mason.nvim",
        config = function()
            -- import mason
            local mason = require("mason")
            -- enable mason and configure icons
            mason.setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "mason.nvim",
            "WhoIsSethDaniel/mason-tool-installer.nvim",
        },
        config = function()
            -- import mason-lspconfig
            local mason_lspconfig = require("mason-lspconfig")
            local mason_tool_installer = require("mason-tool-installer")

            mason_lspconfig.setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                },
            })

            mason_tool_installer.setup({
                ensure_installed = {
                    "codelldb",
                    "black",
                    "ruff",
                    "pylint",
                    "mypy",
                    "stylua",
                },
            })
        end,
    },
}
