local M = {}

-- reads env file as one string
local read_env_file = function ()
  local f = io.open(".env", "r")
  if not f then return "" end
  return f:read("a")
end

M.read_env = function ()
  local env_content = read_env_file()

  -- match key, value pairs which are concatenated by equal signs
  local env_vars = {}
  for k, v in string.gmatch(env_content, "([%w_-]+)=([%w_-]+)") do
    env_vars[k] = v
  end
  return env_vars
end

return M
