local M = {}

M.defaults = {
	background = "dark",

	rainbow_delimiters = {
		enabled = true,
		---@type rainbow_delimiters.config
		override = {},
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
