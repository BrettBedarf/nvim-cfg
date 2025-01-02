-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.g.loaded_perl_provider = 0

local neovim_env = vim.fn.system("pyenv root"):gsub("%s+", "") .. "/versions/neovim/bin/python"
vim.g.python3_host_prog = neovim_env
