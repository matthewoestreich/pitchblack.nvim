vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

vim.cmd("hi clear")

vim.g.colors_name = "pitchblack"

vim.o.termguicolors = true
require("pitchblack").setup()
