return {
	-- example from lazy:
	-- lazy is from this "folke" dude
	-- seems thrustworthy, so just trusting him and throwing these in as well 🙏
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
	{"folke/trouble.nvim", lazy=false, dependencies = { "nvim-tree/nvim-web-devicons" }},

	-- tmux-like navigation
	{
		"alexghergh/nvim-tmux-navigation",
		config= function()
			require "plugins_config.nvim-tmux-navigation"
		end
	},

	-- search
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.2',
		lazy = false,
		config = function()
			require "plugins_config.telescope"
		end,
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- LSP management
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		lazy = false,
		config = function()
			require "plugins_config.mason"
		end
	},
	{
		"simrat39/rust-tools.nvim",
		config = function()
			require "plugins_config.rust-tools"
		end
	},

    {
        "dense-analysis/ale",
        config = function()
            require "plugins_config.ale"
        end
    },

    -- completion
    {
        "ms-jpq/coq_nvim",
        branch = "coq",
        lazy = false,
        config = function()
            require "plugins_config.coq"
        end
    },
    { "ms-jpq/coq.artifacts", branch = "artifacts" },

	-- file management
	{
		"stevearc/oil.nvim",
		config = function()
			require "plugins_config.oil"
		end
	},

	-- debugging
    "mfussenegger/nvim-dap",
    --{
    --    "mfussenegger/nvim-dap-python",
    --    dependencies = {
    --        "mfussenegger/nvim-dap",
    --        "rcarriga/nvim-dap-ui",
    --    },
    --    config = function ()
    --        require "plugins_config.nvim-dap-python"
    --    end
    -- },

	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		config = function()
			require "plugins_config.treesitter"
		end
	},

	-- floating terminals
	{ "voldikss/vim-floaterm", config = function() require "plugins_config.floaterm" end },

	-- general
	{ "m4xshen/autoclose.nvim", config = function() require "plugins_config.autoclose" end },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function ()
            require "plugins_config.tokyonight"
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
        config = function ()
            require "plugins_config.lualine"
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function ()
            require "plugins_config.gitsigns"
        end
    },
    {
        "ray-x/lsp_signature.nvim",
        config = function ()
            require "plugins_config.lsp_signature"
        end
    },
    {
        "akinsho/bufferline.nvim",
        tag = "v4.3.0",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function ()
            require "plugins_config.bufferline"
        end
    },
}
