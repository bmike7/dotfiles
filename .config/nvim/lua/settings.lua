vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.wrap = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- copy to clipboard
vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
  severity_sort = true,
  underline = true,
  virtual_text = {
    prefix = "ϟ",
    spacing = 1,
    source = true,
  },
  float = {
    border = "rounded",
    header = "",
    source = true,
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "✘",
      [vim.diagnostic.severity.WARN] = "?",
      [vim.diagnostic.severity.INFO] = "i",
    },
  },
})
