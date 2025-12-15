local M = {}

local lualine_theme = require("pitchblack.lualine.theme").theme

M.defaults = {
	background = "dark",

	lualine = {
		enabled = true,
		-- lualine native options can be passed directly through
		options = {
			theme = lualine_theme,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			globalstatus = true,
		},
		separators = true,
	},

	rainbow_delimiters = {
		enabled = true,
		colors = {
			level_one = "#FFD700",
			level_two = "#DA70D6",
			level_three = "#179fff",
		},
	},
}

M.options = {}

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", {}, M.defaults, opts or {})
end

return M
