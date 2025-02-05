return {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
        vim.g.VM_default_mappings = 0  -- Disable default mappings if you want custom ones
        vim.g.VM_mouse_mappings = 1    -- Enable mouse mappings

        vim.g.VM_maps = {
            ["Find Under"] = "<C-n>",        -- Select next occurrence of word under cursor
            ["Find Subword Under"] = "<C-n>", -- Same, but for subwords
            ["Add Cursor Down"] = "<C-Down>", -- Add cursor down
            ["Add Cursor Up"] = "<C-Up>",    -- Add cursor up
            ["Select All"] = "<C-S-n>",      -- Select all occurrences
        }

        -- Enable mouse support (for selecting multiple cursors with a mouse)
        vim.o.mouse = "a"

        -- Keybindings for Mouse Cursor Selection
        vim.api.nvim_set_keymap('n', '<C-LeftMouse>', '<Plug>(VM-Mouse-Cursor)', {})
        vim.api.nvim_set_keymap('n', '<C-RightMouse>', '<Plug>(VM-Mouse-Word)', {})
        vim.api.nvim_set_keymap('n', '<M-C-RightMouse>', '<Plug>(VM-Mouse-Column)', {})
    end
}

