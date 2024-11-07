return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<S-s>",
          node_incremental = "<S-s>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    },
  },
}
