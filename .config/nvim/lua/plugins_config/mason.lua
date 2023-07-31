local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "tsserver",
    "pyright",
  }
});

-- Setup every needed language server in lspconfig
mason_lspconfig.setup_handlers {
  function (server_name)
	-- will be set up by `rust-tools` and we don't want any conflicts
	if server_name == "rust-analyzer" then
		do return end
	end
    lspconfig[server_name].setup {}
  end,
}
