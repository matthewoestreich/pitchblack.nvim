local config = require("pitchblack.config")

local M = {}

function M.apply()
	local rd = config.options.rainbow_delimiters

	if not rd.enabled then
		return
	end

	local ok = pcall(require, "rainbow-delimiters")
	if not ok then
		return
	end

	-- If override is not empty, use those instead.
	if type(rd.override) == "table" then
		vim.g.rainbow_delimiters = rd.override
		return
	end

	vim.g.rainbow_delimiters = {
		highlight = {
			"RainbowDelimiterYellow",
			"RainbowDelimiterPurple",
			"RainbowDelimiterBlue",
		},
		highlight_priority = 2000,
	}

	for _, grp in ipairs({
		"@punctuation.bracket",
		"@punctuation.bracket.rust",
		"@punctuation.bracket.typescript",
		"@punctuation.bracket.javascript",
		"@punctuation.bracket.jsx",
		"@punctuation.bracket.tsx",
	}) do
		vim.api.nvim_set_hl(0, grp, { fg = "NONE", bg = "NONE", link = "" })
	end

	vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = rd.colors.level_one })
	vim.api.nvim_set_hl(0, "RainbowDelimiterPurple", { fg = rd.colors.level_two })
	vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = rd.colors.level_three })
end

return M
