local function find_python_venv()
  local path = vim.fn.getcwd()
  while path ~= "/" do
    local site = vim.fn.glob(path .. "/.venv/lib/python*/site-packages", true, true)
    if #site > 0 then return site[1] end
    path = vim.fn.fnamemodify(path, ":h")
  end
  return nil
end

return {
  settings = {
    pyright = {
      -- Using Ruff's import organizer
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
        typeCheckingMode = "off", -- mypy
        extraPaths = { find_python_venv() },
      },
    },
  },
}
