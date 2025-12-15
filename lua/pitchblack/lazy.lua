return {
	--[[
	{
		"nvim-lualine/lualine.nvim",
		optional = true,
		config = function()
			local ok, lualine = pcall(require, "lualine")
			if not ok then
				return
			end
			-- Merge pitchblack options safely
			local cfg = lualine.get_config()
			cfg.options =
				vim.tbl_deep_extend("force", {}, cfg.options, require("pitchblack.config").options.lualine.opts or {})
			lualine.setup(cfg)
		end,
	},
  --]]
}
