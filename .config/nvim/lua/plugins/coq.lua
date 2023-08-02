return {
    {
        "ms-jpq/coq_nvim",
        branch = "coq",
        lazy = false,
        config = function()
            vim.cmd[[ 
            " 🐓 Coq completion settings
            " jump_to_mark by default uses <C-h> which collides with tmux navigation
            let g:coq_settings = { 'auto_start': v:true, 'keymap.jump_to_mark': v:null }

            COQnow --shut-up
            ]]
        end
    },
    { "ms-jpq/coq.artifacts", branch = "artifacts" },
}
