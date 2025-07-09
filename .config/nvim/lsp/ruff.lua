return {
  init_options = {
    settings = {
      logLevel = 'debug',
    }
  },
  capabilities = {
    general = {
      -- https://github.com/astral-sh/ruff/issues/14483
      -- positionEncodings = { "utf-8", "utf-16", "utf-32" }  <--- this is the default
      positionEncodings = { "utf-16" }
    },
  }
}
