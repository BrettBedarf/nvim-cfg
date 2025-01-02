local is_in_dir = require("utils.paths").is_in_dir

return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    --  _@type lspconfig.options
    servers = {
      hyprland = {
        cmd = { "hyprls" },
        filetypes = { "hyprland", "hypr" },
        root_dir = function(fname)
          if is_in_dir(fname, "~/.config/hypr") then
            -- If the file is within a known directory, set the root_dir as the directory of the file
            return vim.fn.fnamemodify(fname, ":p:h")
          else
            -- Default behavior for other cases (for example, based on the presence of a .git directory)
            return vim.fs.dirname(vim.fs.find(".git", { path = fname, upward = true })[1]) or vim.fn.getcwd()
          end
        end,
      },
    },
  },
}
