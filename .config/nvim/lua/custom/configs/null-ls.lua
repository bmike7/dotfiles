local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
   formatting.black,
   formatting.isort,

   lint.flake8,
   lint.mypy,
   lint.mypy,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  border = "rounded",
  debug = true,
  sources = sources,
  on_attach = function (client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function ()
          vim.lsp.buf.format({
            bufnr = bufnr,
            filter = function (cl)
              return cl.name == "null-ls"
            end
          })
        end
      })
    end
  end
}

