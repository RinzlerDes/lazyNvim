-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Update terminal cwd to match the Neovim cwd
vim.cmd([[autocmd VimEnter * cd %:p:h]])

-- Force load of all plugins
vim.defer_fn(function()
  vim.cmd("Lazy load all")
end, 100)

-- vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
--   vim.lsp.handlers.hover,
--   {border = 'rounded'}
-- )
--
-- vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
--   vim.lsp.handlers.signature_help,
--   {border = 'rounded'}
-- )
