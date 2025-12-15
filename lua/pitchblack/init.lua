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
end

return M
