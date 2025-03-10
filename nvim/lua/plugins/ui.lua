return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  {
    "folke/snacks.nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = {
        [[                                                        
                  ▀████▀▄▄              ▄█      ╔══════════════╗
                    █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█      ║ Pi-ka-chuuu! ║
            ▄        █          ▀▀▀▀▄  ▄▀       ╚══════════════╝
           ▄▀ ▀▄      ▀▄              ▀▄▀                       
          ▄▀    █     █▀   ▄█▀▄      ▄█                         
          ▀▄     ▀▄  █     ▀██▀     ██▄█                        
           ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █                       
            █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀                       
           █   █  █      ▄▄           ▄▀                        
                                                                ]],
      }
      opts.dashboard.preset.header = logo
    end,
  },
}
