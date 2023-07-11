local M = {}

-- set some vim options
vim.wo.relativenumber = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.opt.wrap = false

M.ui = {
  theme = 'github_dark',
  telescope = {
    style = "bordered",
  },
  nvdash = {
    load_on_startup = true,

    header = {
      "                                   ",
      "     ▟███████████████████████▙     ",
      "    ▟█▛                     ▜█▙    ",
      "    ██                       ██    ",
      "    ██     ▟████▙ ▟████▙     ██    ",
      "    ██     ▀    ▝█▘    ▀     ██    ",
      "    ██        ▂▄▄█▄▄▂        ██    ",
      "    ██        ▙ ▝█▘ ▟        ██    ",
      "    ██      ▟█████████▙      ██    ",
      "    ██      ▄▄▄▄▄▄▄▄▄▄▄      ██    ",
      "    ██      ▜█████████▛      ██    ",
      "    ██                       ██    ",
      "    ▜█▙                     ▟█▛    ",
      "     ▜███████████████████████▛     ",
      "                                   ",
    },

    buttons = {
      { "󰭎  Find File", "Spc f f", "Telescope find_files" },
      { "󱝪  Recent File", "Spc f o", "Telescope oldfiles" },
      { "󱘣  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc b m", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },

    lsp = {
      -- show function signatures i.e args as you type
      signature = {
        disabled = true,
        silent = true, -- silences 'no signature help available' message from appearing
      },
    },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
