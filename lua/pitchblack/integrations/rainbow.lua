local config = require("pitchblack.config")

local M = {}

function M.apply()
	if not config.options.rainbow_delimiters.enabled then
		return
	end

	local ok = pcall(require, "rainbow-delimiters")
	if not ok then
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

	vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = config.options.rainbow_delimiters.colors.level_one })
	vim.api.nvim_set_hl(0, "RainbowDelimiterPurple", { fg = config.options.rainbow_delimiters.colors.level_two })
	vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = config.options.rainbow_delimiters.colors.level_three })
end

return M
