return {
    "christoomey/vim-tmux-navigator",
    config = function()
        local left = "<cmd> TmuxNavigateLeft <CR>"
        local right = "<cmd> TmuxNavigateRight <CR>"
        local up = "<cmd> TmuxNavigateUp <CR>"
        local down = "<cmd> TmuxNavigateLDown <CR>"

        -- vim.keymap.set("n", "<C-h>", left, {})
        -- vim.keymap.set("n", "<C-l>", right, {})
        -- vim.keymap.set("n", "<C-j>", down, {})
        -- vim.keymap.set("n", "<C-k>", up, {})
    end
}
