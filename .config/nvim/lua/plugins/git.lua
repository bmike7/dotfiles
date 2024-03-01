return {
    {
        "tpope/vim-fugitive",
    },
    {
        "ThePrimeagen/git-worktree.nvim",
        config = function ()
            require("git-worktree").setup()

            local s = require("telescope")
            s.load_extension("git_worktree")
            vim.keymap.set("n", "<leader>wl", s.extensions.git_worktree.git_worktrees)
            vim.keymap.set("n", "<leader>wc", s.extensions.git_worktree.create_git_worktree)
        end
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function ()
            require('gitsigns').setup()
        end
    }
}
