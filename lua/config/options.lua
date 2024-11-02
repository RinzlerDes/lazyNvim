-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.tabstop = 4
opt.shiftwidth = 4
opt.relativenumber = false
opt.scrolloff = 20
-- vim.opt.colorcolumn = "80"
-- Configure different cursor styles
-- Set up the cursor to blink

-- vim.opt.guicursor = "n-v-c-sm:block-blinkon0,i-ci-ve:ver25,r-cr-o:hor20"
-- Set up the cursor styles for different modes
vim.opt.guicursor = {
  "n-v-c:block-blinkon100", -- Normal, Visual, Command mode: block cursor that blinks
  "i-ci-ve:ver25-blinkon100", -- Insert, Command-line, Visual-Ex mode: vertical line cursor that blinks
  "r-cr:hor20-blinkon100", -- Replace mode: horizontal bar cursor that blinks
}
