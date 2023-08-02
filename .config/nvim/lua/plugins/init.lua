return {
	-- example from lazy:
	-- lazy is from this "folke" dude
	-- seems thrustworthy, so just trusting him and throwing these in as well 🙏
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
	{"folke/trouble.nvim", lazy=false, dependencies = { "nvim-tree/nvim-web-devicons" }},

	-- debugging
    "mfussenegger/nvim-dap",
}
