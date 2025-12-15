local config = require("pitchblack.config")

local M = {}

function M.apply_core()
	--vim.notify("pitchblack:highlights:apply_core()")
	vim.o.background = config.options.background

	local core_hl = {
		["Normal"] = { fg = "#d4d4d4", bg = "#000000" },
		["NormalNC"] = { fg = "#d4d4d4", bg = "#000000" },
		["NormalFloat"] = { bg = "#000000", fg = "#ffffff" },
		["FloatBorder"] = { bg = "#000000", fg = "#8aaae5" },
		["CursorLineNr"] = { fg = "#ff966c", bold = true },
		["CursorLine"] = { bg = "#2f334d" },
		["LineNrAbove"] = { fg = "#777777", bg = "#000000" },
		["LineNrBelow"] = { fg = "#777777", bg = "#000000" },
		["SignColumn"] = { bg = "#000000" },
		["SignColumnSB"] = { bg = "#000000" },
		["FoldColumn"] = { bg = "#000000" },
		["TabLine"] = { fg = "#3b4261", bg = "#1e2030" },
		["TabLineSel"] = { fg = "#1b1d2b", bg = "#82aaff" },
		["TabLineFill"] = { bg = "#1b1d2b" },
		["Visual"] = { bg = "#2d3f76" },

		-- Explorer related
		["Directory"] = { fg = "#82aaff" },

		-- Diagnostics
		["DiagnosticWarn"] = { fg = "#ffc777" },

		-- Snacks
		["SnacksPickerFile"] = { fg = "#ffffff" },
		["SnacksPickerPathHidden"] = { fg = "#545c7e" },
		["SnacksPickerBoxTitle"] = { fg = "#ff966c", bg = "#1e2030" },
		["SnacksDashboardKey"] = { fg = "#ff966c" },
		["SnacksDashboardHeader"] = { fg = "#82aaff" },
		["SnacksNotifierTitleWarn"] = { fg = "#ffc777" },
		["SnacksPickerInputBorder"] = { fg = "#ff966c", bg = "#1e2030" },
		["SnacksPickerInputTitle"] = { fg = "#ff966c", bg = "#1e2030" },
		["SnacksNotifierIconDebug"] = { fg = "#636da6" },
		["SnacksDashboardFooter"] = { fg = "#65bcff" },
		["SnacksInputIcon"] = { fg = "#65bcff" },
		["SnacksInputBorder"] = { fg = "#ffc777" },
		["SnacksPickerPickWinCurrent"] = { fg = "#c8d3f5", bg = "#ff007c", bold = true },
		["SnacksPickerPickWin"] = { fg = "#c8d3f5", bg = "#3e68d7" },
		["SnacksGhLabel"] = { fg = "#65bcff", bold = true },
		--["SnacksPickerToggle"] = {}, -- xxx links to SnacksProfilerBadgeInfo
		["SnacksNotifierTitleDebug"] = { fg = "#636da6" },
		["SnacksNotifierTitleError"] = { fg = "#c53b53" },
		["SnacksNotifierIconError"] = { fg = "#c53b53" },
		["SnacksInputTitle"] = { fg = "#ffc777" },
	}

	for group, opts in pairs(core_hl) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

function M.apply_treesitter()
	--vim.notify("pitchblack:highlights:apply_treesitter()")
	-- Treesitter / Syntax highlights
	local ts_hl = {
		["@constructor.typescript"] = { fg = "#4ec9b0" },
		["@keyword.return.typescript"] = { fg = "#C586C0" },
		["@keyword.coroutine.typescript"] = { fg = "#C586C0" },
		["@type.builtin.typescript"] = { fg = "#4EC9B0" },
		["@attribute"] = { fg = "#ffffff" },
		["@comment"] = { fg = "#6a9955", italic = false },
		["@string"] = { fg = "#d69d85" },
		["@character"] = { fg = "#d69d85" },
		["@keyword"] = { fg = "#569cd6", italic = false },
		["@keyword.function"] = { fg = "#569cd6" },
		["@keyword.modifier"] = { fg = "#569cd6" },
		["@keyword.struct"] = { fg = "#569cd6" },
		["@keyword.repeat"] = { fg = "#C586C0" },
		["@keyword.conditional"] = { fg = "#C586C0" },
		["@keyword.enum"] = { fg = "#569cd6" },
		["@keyword.import"] = { fg = "#569cd6" },
		["@function"] = { fg = "#DCDCAA" },
		["@function.rust"] = { fg = "#DCDCAA" },
		["@function.method"] = { fg = "#DCDCAA" },
		["@function.call"] = { fg = "#DCDCAA" },
		["@function.builtin"] = { fg = "#569cd6" },
		["@variable"] = { fg = "#9CDCFE" },
		["@variable.builtin"] = { fg = "#569cd6" },
		["@variable.member"] = { fg = "#9cdcfe" },
		["@variable.parameter"] = { fg = "#9cdcfe" },
		["@constant"] = { fg = "#4fc1ff" },
		["@type"] = { fg = "#4ec9b0" },
		["@number"] = { fg = "#b5cea8" },
		["@boolean"] = { fg = "#569cd6" },
		["@module"] = { fg = "#4ec9b0" },
		["@operator"] = { fg = "#d4d4d4" },
		["@namespace"] = { fg = "#569cd6" },
		["@parameter"] = { fg = "#9cdcfe" },
		["@property"] = { fg = "#9cdcfe" },
		["@punctuation.delimiter"] = { fg = "#ffffff" },
		["@punctuation.special"] = { fg = "#ffffff" },
		["@method"] = { fg = "#DCDCAA" },
		["@tag"] = { fg = "#569cd6" },
		["@field"] = { fg = "#9cdcfe" },
		["@lsp.mod.mutable.rust"] = { fg = "#9cdcfe", bold = true },
		["@lsp.typemod.generic.attribute.rust"] = { fg = "#ffffff" },
		["@lsp.type.formatSpecifier.rust"] = { fg = "#569cd6" },
		["@type.builtin.rust"] = { fg = "#4EC9B0" },
		["SnacksPickerGitStatusUntracked"] = { fg = "#b6b6c0", italic = true },
		["DiagnosticUnderlineError"] = { undercurl = true, underdouble = true, sp = "#ff0000" },
		["DiagnosticUnderlineHint"] = { undercurl = true, underdouble = true, sp = "#4fd6be" },
		["DiagnosticUnderlineWarn"] = { undercurl = true, underdouble = true, sp = "#ffc777" },
		["DiagnosticUnnecessary"] = {
			blend = 50,
			underdouble = true,
			fg = "#736f44",
			sp = "#ffc777",
		},
	}

	for group, opts in pairs(ts_hl) do
		vim.api.nvim_set_hl(0, group, opts)
	end
end

return M
