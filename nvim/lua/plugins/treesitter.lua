return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "S",
          node_incremental = "S",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    },
  },
}
