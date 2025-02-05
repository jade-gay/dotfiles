return {
   "catppuccin/nvim", 
   lazy = false,
   name = "catppuccin", 
   priority = 1000,
   config = function()
      vim.cmd.colorscheme "catppuccin"
      
      vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#f5c2e7" })
      vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#f5c2e7" })
      vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#f5c2e7" })
      vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#f5c2e7" })
      vim.api.nvim_set_hl(0, "Beacon", { bg = "#f5c2e7" })
      vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#1e1e2e" })
      vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#1e1e2e" })

      require("catppuccin").setup({
         integrations = {
            beacon = true,
            alpha = false,
				barbar = true
         },
      })
   end
}

