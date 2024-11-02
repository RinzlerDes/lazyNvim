-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "" })
  end,
})
