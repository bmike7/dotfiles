return {
    "simrat39/rust-tools.nvim",
    config = function()
        local rt = require("rust-tools")

        -- TODO: check for different PC's if this is true (this is OS specific as well)
        local home_path = os.getenv("HOME")
        local extension_path = home_path .. '/.local/share/nvim/mason/packages/codelldb/extension/'
        local codelldb_path = extension_path .. 'adapter/codelldb'
        local liblldb_path = extension_path .. 'lldb/lib/liblldb.dylib'

        rt.setup({
            server = {
                on_attach = function(_, bufnr)
                    local dap = require("dap")

                    vim.keymap.set("n", "<leader>bt", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
                    vim.keymap.set("n", "<leader>bc", dap.continue, { desc = "Continue debugging" })

                    vim.keymap.set("n", "<C-a>", rt.hover_actions.hover_actions, { buffer = bufnr })
                    vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                end,
            },
            dap = {
                adapter = require('rust-tools.dap').get_codelldb_adapter(
                codelldb_path, liblldb_path)
            }
        })
    end
}
