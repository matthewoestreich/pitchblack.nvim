local M = {}

M.refresh_lualine = function()
	local ok, lualine = pcall(require, "lualine")
	if not ok then
		return
	end

	lualine.setup({
		options = {
			theme = "pitchblack",
		},
	})
end

return M
