return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")

            vim.fn.sign_define('DapBreakpoint', {text='🔥', texthl='', linehl='', numhl=''})
            vim.keymap.set("n", "<leader>dk", dap.continue, { desc = "Continue debugging" })
            vim.keymap.set("n", "<leader>dd", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
        end
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {"mfussenegger/nvim-dap"},
        config = function()
            local dap = require("dap")
            local dapui = require("dapui")

            dapui.setup()
            dap.listeners.after.event_initialized["dapui_config"] = dapui.open
            dap.listeners.before.event_terminated["dapui_config"] = dapui.close
            dap.listeners.before.event_exited["dapui_config"] = dapui.close
        end
    }
}
