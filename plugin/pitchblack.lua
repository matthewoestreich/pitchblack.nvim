vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		require("pitchblack").apply()
	end,
})
