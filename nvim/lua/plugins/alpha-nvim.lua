return {
  "goolord/alpha-nvim",
  requires = {
    "echasnovski/mini.icons",
    "nvim-lua/plenary.nvim"
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "                                                 ",
      "                                             ,--.           ",
      ",--,--,--. ,---.  ,---. ,--.   ,--.,--.  ,--.`--',--,--,--. ",
      "|        || .-. :| .-. ||  |.'.|  | \\  `'  / ,--.|        |",
      "|  |  |  |\\   --.' '-' '|   .'.   |  \\    /  |  ||  |  |  |",
      "`--`--`--' `----' `---' '--'   '--'   `--'   `--'`--`--`--' ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("f", "  find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "  recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("t", "  find text", ":Telescope live_grep<CR>"),
      dashboard.button("n", "  new file", ":ene<CR>"),
      dashboard.button("q", "  quit", ":qa<CR>")
    }

    dashboard.section.footer.val = "meow"

    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#f5c2e7", bold = true })
    vim.api.nvim_set_hl(0, "AlphaFooter", { fg = "#8a8f96", italic = true })

    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.footer.opts.hl = "AlphaFooter"

    alpha.setup(dashboard.config)
  end
}
