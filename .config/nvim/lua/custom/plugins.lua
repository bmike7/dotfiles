local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy=false,
  },
  {
    "xiyaowong/transparent.nvim",
    lazy=false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- python dev
        "python",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

       -- low level
        "c",
        "zig"
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        -- python
        "python-lsp-server",
        "black",
        "flake8",
        "mypy",
        "isort",
      },
    },
  },

  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local nv_chad_opts = require "plugins.configs.telescope"
      local custom_opts = require "custom.configs.telescope"
      return vim.tbl_deep_extend("force", nv_chad_opts, custom_opts)
    end,
  },

  -- floating windows
  {
    "voldikss/vim-floaterm",
    lazy=false,
  },

  -- dap (debug adapter protocol)
  {
    "mfussenegger/nvim-dap",

    dependencies = {
      {
        "rcarriga/nvim-dap-ui",

        config = function ()
          require "custom.configs.nvim-dap-ui"
        end
      },
      {
        "mfussenegger/nvim-dap-python",

        config = function ()
          require "custom.configs.nvim-dap-python"
        end
      }
    },

    config = function ()
      require "custom.configs.nvim-dap"
    end
  },

}

return plugins

