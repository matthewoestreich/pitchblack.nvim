local config = require("pitchblack.config")

local M = {}

function M.extend_opts(lualine_opts)
	if not config.options.lualine.enabled then
		return
	end

	lualine_opts.options = lualine_opts.options or {}
	lualine_opts.options = vim.tbl_deep_extend("force", {}, lualine_opts.options, config.options.lualine.opts or {})
end

return M
