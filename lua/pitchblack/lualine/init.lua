local config = require("pitchblack.config")

local M = {}

function M.extend_opts()
	if not config.options.lualine.enabled then
		return
	end

	pcall(function()
		if config.options.lualine.enabled then
			require("pitchblack.lualine").extend_opts(require("lualine").get_config())
		end
	end)
end

return M
