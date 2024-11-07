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
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = {
        [[                                                        ]],
        [[          ▀████▀▄▄              ▄█      ╔══════════════╗]],
        [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█      ║ Pi-ka-chuuu! ║]],
        [[    ▄        █          ▀▀▀▀▄  ▄▀       ╚══════════════╝]],
        [[   ▄▀ ▀▄      ▀▄              ▀▄▀                       ]],
        [[  ▄▀    █     █▀   ▄█▀▄      ▄█                         ]],
        [[  ▀▄     ▀▄  █     ▀██▀     ██▄█                        ]],
        [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █                       ]],
        [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀                       ]],
        [[   █   █  █      ▄▄           ▄▀                        ]],
        [[                                                        ]],
      }
      opts.config.header = logo
      opts.config.footer = function()
        return { "Anything worth doing well is worth doing poorly at first." }
      end
    end,
  },
}
