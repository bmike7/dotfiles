local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = "Find in git files" })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = "Live grep" })
vim.keymap.set('n', '<leader>fm', builtin.man_pages, { desc = "Find manual" })
vim.keymap.set('n', '<leader>fc', builtin.colorscheme, { desc = "Find colorscheme" })
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, { desc = "Find reference" })
vim.keymap.set('n', '<leader>fi', builtin.lsp_definitions, { desc = "Find implementation" })
