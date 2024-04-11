return {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Set menu
        dashboard.section.buttons.val = {
            dashboard.button("e", "  New file", "<cmd>ene<CR>"),
            dashboard.button("SPC e e", "  Toggle file explorer"),
            dashboard.button("SPC f f", "󰱼  Find file"),
            dashboard.button("SPC f r", "󰊄  Recently opened files"),
            dashboard.button("SPC f g", "  Find word"),
            dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
            -- button("SPC f m", "  Jump to bookmarks"),
            -- button("SPC s l", "  Open last session"),
            -- dashboard.button("SPC wr", "󰁯  > Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
        }

        -- Dashboard header
        dashboard.section.header.val = {
            [[          ▀████▀▄▄              ▄█ ]],
            [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
            [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
            [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
            [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
            [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
            [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
            [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
            [[   █   █  █      ▄▄           ▄▀   ]],
        }

        -- Dashboard footer
        local function footer()
            return "Anything worth doing well is worth doing poorly at first."
        end
        dashboard.section.footer.val = footer()
        dashboard.section.footer.opts.hl = "Type"
        dashboard.section.header.opts.hl = "Include"
        dashboard.section.buttons.opts.hl = "Keyword"

        dashboard.opts.opts.noautocmd = true

        -- Send config to alpha
        alpha.setup(dashboard.opts)

        -- Diable folding on alpha buffer
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end,
}
