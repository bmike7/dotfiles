return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-ui-select.nvim",
  },
  keys = {
    { "<leader>ff", ":Telescope find_files hidden=true<cr>" },
    { "<leader>fw", ":Telescope live_grep<cr>" },
    { "<leader>fm", ":Telescope man_pages<cr>" },
    { "<leader>fc", ":Telescope colorscheme<cr>" },
    { "<leader>fr", ":Telescope lsp_references<cr>" },
    { "<leader>fi", ":Telescope lsp_definitions<cr>" },
    { "<leader>b", ":Telescope buffers<cr>" },
    { "<leader>h", ":Telescope help_tags<cr>" },
    { "z=", ":Telescope spell_suggest theme=cursor<cr>" },
  },
  config = function()
    local actions = require("telescope.actions")
    local themes = require("telescope.themes")

    require("telescope").setup({
      defaults = {
        file_ignore_patterns = {
          ".git/",
          ".tox/",
          "node_modules/",
        },
        mappings = {
          i = {
            ["<esc>"] = actions.close,
          },
        },
      },
      extensions = {
        fzf = {},
        ["ui-select"] = {
          themes.get_cursor(),
        },
      },
    })

    require("telescope").load_extension("fzf")
    require("telescope").load_extension("ui-select")
  end,
}
