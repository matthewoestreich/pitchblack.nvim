return {
	{
		"nvim-lualine/lualine.nvim",
		optional = true,
		opts = function(_, opts)
			require("pitchblack.lualine").extend_opts(opts)
		end,
	},
}
