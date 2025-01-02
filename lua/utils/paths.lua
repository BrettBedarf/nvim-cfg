local M = {}

-- Function to check if the given dynamic file path is inside a specific static directory
M.is_in_dir = function(fpath, static_dir)
  -- Normalize both the dynamic path and static directory to absolute paths
  local realpath = vim.fn.fnamemodify(fpath, ":p") -- Get absolute path of the dynamic file
  local static_realpath = vim.fn.fnamemodify(static_dir, ":p") -- Get absolute path of the static directory

  -- Check if the dynamic path starts with the static directory
  return realpath:find("^" .. static_realpath) ~= nil
end

return M
