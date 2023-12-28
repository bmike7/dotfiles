return {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    lazy = false,
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local lspconfig = require("lspconfig")

        mason.setup()
        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
                "tsserver",
                "pyright",
                "bashls",
                "clangd",
                "terraformls"
            }
        });

        -- Setup every needed language server in lspconfig
        mason_lspconfig.setup_handlers {
            function (server_name)
                lspconfig[server_name].setup {}
            end,
            -- will be set up by `rust-tools` and we don't want any conflicts
            ["rust_analyzer"] = function()
                do return end
            end,
            ["pyright"] = function()
                lspconfig.pyright.setup({
                    settings = {
                        python = {
                            venv = ".venv",
                            venvPath = os.getenv("PWD"),
                        }
                    }
                })
            end
        }
    end
}
