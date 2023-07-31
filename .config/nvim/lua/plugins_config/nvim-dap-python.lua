local dap = require("dap")
local dapui = require("dapui")
local dappython = require("dap-python")

local debugpy = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"

dappython.setup(debugpy)
dappython.test_runner = "pytest"

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

vim.fn.sign_define('DapBreakpoint', {text='🔥', texthl='', linehl='', numhl=''})
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint, { desc = "Debug toggle" })
vim.keymap.set('n', '<leader>dr', dap.continue, { desc = "Debug run" })
vim.keymap.set('n', '<leader>dm', dappython.test_method, { desc = "Debug method" })
vim.keymap.set('n', '<leader>dc', dappython.test_class, { desc = "Debug class" })
