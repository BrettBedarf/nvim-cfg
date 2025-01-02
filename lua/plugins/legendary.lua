local keymaps = {
  {},
  -- TODO
  -- {itemgroup='+hurl'}
}

return {
  "mrjones2014/legendary.nvim",
  -- since legendary.nvim handles all your keymaps/commands,
  -- its recommended to load legendary.nvim before other plugins
  priority = 10000,
  lazy = false,
  -- sqlite is only needed if you want to use frecency sorting
  dependencies = { "kkharji/sqlite.lua" },
  -- https://github.com/mrjones2014/legendary.nvim/blob/master/lua/legendary/config.lua
  opts = {
    extensions = {
      lazy_nvim = true,
      which_key = { auto_register = true },
      smart_splits = {
        mods = {
          move = "<C>",
          resize = "<C-M>",
        },
      },
    },
  },
}
