local config = require("pitchblack.config")

local M = {}

function M.apply()
	if not config.options.lualine.enabled then
		return
	end

	local ok, lualine = pcall(require, "lualine")
	if not ok then
		return
	end

	-- Apply the theme
	lualine.setup({
		options = config.options.lualine.options or {},
	})
end

return M
