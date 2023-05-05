local M = {}

M.log = function(origin, message)
  local log_file_path = os.getenv("HOME") .. "/.cache/nvim/custom.log"
  local log_file = io.open(log_file_path, "a") or io.open(log_file_path, "w")
  if not log_file then return end

  io.output(log_file)
  io.write("[" .. os.date("%c") .. "] ".. string.upper(origin or "not_defined") .. ": " .. message .. "\n")
  io.close(log_file)
end

return M
