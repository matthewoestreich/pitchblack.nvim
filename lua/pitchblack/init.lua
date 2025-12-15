local config = require("pitchblack.config")
local lualine = require("pitchblack.integrations.lualine")
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

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "pitchblack",
	callback = function()
		vim.schedule(M.setup)
		lualine.refresh_lualine()
	end,
})

return M
