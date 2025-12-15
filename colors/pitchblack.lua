vim.cmd("highlight clear")
vim.cmd("hi clear")
vim.g.colors_name = "pitchblack"
vim.o.termguicolors = true

local pb = require("pitchblack")
pb.setup()
