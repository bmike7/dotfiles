local ts_utils = require("nvim-treesitter.ts_utils")

local M = {}

M.get_method_name = function ()
  local current_node = ts_utils.get_node_at_cursor()
  while current_node do
    if current_node:type() == "function_definition" then
      break
    end
    current_node = current_node:parent()
  end

  if not current_node then return "" end

  -- https://www.reddit.com/r/neovim/comments/nnru7r/comment/gzw4lnj/?utm_source=share&utm_medium=web2x&context=3
  return (ts_utils.get_node_text(current_node:child(1)))[1]
end

return M
