return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "mypy",
        "pylint",
      },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },
}
