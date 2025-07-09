return {
    "dense-analysis/ale",
    config = function()
        vim.g.ale_echo_msg_error_str = 'E'
        vim.g.ale_echo_msg_warning_str = 'W'
        vim.g.ale_echo_msg_format = '[%linter%] %code%: %s [%severity%]'
        vim.g.ale_linters = {
            python = { 'ruff' }
        }
        vim.g.ale_set_quickfix = 1
        vim.g.ale_open_list = 1
        vim.g.ale_python_pycodestyle_options = '--max-line-length=120'
        vim.g.ale_set_highlights = 0

        vim.g.ale_use_neovim_diagnostics_api = 1
        vim.g.ale_disable_lsp = 1
        vim.g.ale_fix_on_save = 1
        vim.g.ale_fixers = {
            -- changelogmd = { "ocdc" },
            css = { "prettier" },
            go = { "gofmt" },
            html = { "prettier" },
            javascript = { "prettier" },
            json = { "prettier" },
            lua = { "stylua" },
            packer = { "packer" },
            python = { 'ruff' },
            rust = { "rustfmt" },
            scss = { "prettier" },
            svelte = { "prettier" },
            terraform = { "terraform" },
            typescript = { "prettier" },
            ["*"] = { "remove_trailing_lines", "trim_whitespace" },
        }
    end
}
