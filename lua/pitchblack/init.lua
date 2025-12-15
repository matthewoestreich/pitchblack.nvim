local config = require("pitchblack.config")
local hl = require("pitchblack.highlights")

local M = {}

function M.setup(opts)
	config.setup(opts)
	M.apply()
end

function M.apply()
	hl.apply_core()
	hl.apply_treesitter()
	require("pitchblack.integrations.rainbow").apply()
	if config.options.lualine.enabled then
		require("pitchblack.lualine").extend_opts(require("lualine").get_config())
	end
end

return M
