local config = require("pitchblack.config")
local hl = require("pitchblack.highlights")

local M = {}

function M.setup(opts)
	--vim.notify("pitchblack:config:setup()")
	vim.g.colors_name = "pitchblack"
	config.setup(opts)
	hl.apply_core()
	hl.apply_treesitter()
	require("pitchblack.integrations.rainbow").apply()
end

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "pitchblack",
	callback = function()
		vim.schedule(M.setup)
	end,
})

return M
