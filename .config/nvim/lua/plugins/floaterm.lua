return {
    "voldikss/vim-floaterm",
    config = function()
        local pg_host = os.getenv("LOCAL_POSTGRES_HOST") or ""
        local pg_user = os.getenv("LOCAL_POSTGRES_USER") or ""

        local lazygit = "<cmd> FloatermNew --height=0.8 --width=0.9 --title=Git lazygit<CR>"
        local lazydocker = "<cmd> FloatermNew --height=0.8 --width=0.9 --title=Docker lazydocker<CR>"
        local lazypython = "<cmd> FloatermNew --height=0.8 --width=0.9 --title=Python python<CR>"
        local lazyterminal = "<cmd> FloatermNew --height=0.8 --width=0.9 --title=Terminal<CR>"
        local lazybtop = "<cmd> FloatermNew --height=0.8 --width=0.9 --title=BTOP btop<CR>"
        local lazylocalpostgres = "<cmd> FloatermNew --height=0.8 --width=0.9 --title=Local-Postgres pgcli -h " .. pg_host .. " -U " .. pg_user .." -W -d gorilla<CR>"

        vim.keymap.set("n", "<leader>lg", lazygit, {})
        vim.keymap.set("n", "<leader>ld", lazydocker, {})
        vim.keymap.set("n", "<leader>lp", lazypython, {})
        vim.keymap.set("n", "<leader>lt", lazyterminal, {})
        vim.keymap.set("n", "<leader>lb", lazybtop, {})
        vim.keymap.set("n", "<leader>llp", lazylocalpostgres, {})
    end
}
