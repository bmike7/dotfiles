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
  }
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
