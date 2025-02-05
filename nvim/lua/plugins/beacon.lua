return {
	"danilamihailov/beacon.nvim",
	config = function()
		require("beacon").setup({
			enabled = true,
			speed = 1,
			width = 40,
			winblend = 70,
			fps = 240,
			min_jump = 10,
			cursor_events = { "CursorMoved" },
			window_events = { "WinEnter", "FocusGained" },
		})
	end
}

