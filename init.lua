-- -- NvChad setup
-- -- put this in your main init.lua file ( before lazy setup )
-- vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46_cache/"
--
-- -- put this after lazy setup
--
-- -- (method 1, For heavy lazyloaders)
-- dofile(vim.g.base46_cache .. "defaults")
-- dofile(vim.g.base46_cache .. "statusline")
--
-- -- (method 2, for non lazyloaders) to load all highlights at once
-- for _, v in ipairs(vim.fn.readdir(vim.g.base46_cache)) do
--   dofile(vim.g.base46_cache .. v)
-- end
-- -- NvChad setup

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Update terminal cwd to match the Neovim cwd
-- vim.cmd([[autocmd TermOpen * startinsert]])
-- vim.cmd([[autocmd TermOpen * silent! lcd %:p:h]])
-- vim.cmd([[set autochdir]])
vim.cmd([[autocmd VimEnter * cd %:p:h]])

-- Force load of all plugins
vim.defer_fn(function()
  vim.cmd("Lazy load all")
end, 100)
