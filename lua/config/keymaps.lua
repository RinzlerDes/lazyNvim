-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local ls = require("luasnip")

-- Error  snippet
-- map("i", "<A-e>", "if err := nil {\n\t\n}", { noremap = true })
-- map("i", "<A-e>", "if err := nil {\n\t\n}<cmd>lua require('luasnip').expand()<cr>", { noremap = true })
-- map("i", "<A-e>", "<cmd>lua require('luasnip').expand_snippet('iferr')<CR>", { noremap = true, silent = true })
-- map("i", "<A-e>", function()
--   ls.expand("iferr")
-- end, { silent = true })

-- Delete previous word with Ctrl+Backspace in insert mode
map("i", "<C-H>", "<C-w>", { noremap = true, silent = true })

-- Move Lines
map("n", "<A-Down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-UP>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Swap these two NeoTree commands
map("n", "<leader>e", "<leader>fE", { desc = "Explorer NeoTree (cwd)", remap = true })
map("n", "<leader>E", "<leader>fe", { desc = "Explorer NeoTree (Root Dir)", remap = true })

-- Have ctrl / open terminal in cwd
map("n", "<c-_>", function()
  LazyVim.terminal()
end, { desc = "which_key_ignore" }) -- This remains unchanged
map("n", "<c-/>", function()
  LazyVim.terminal()
end, { desc = "Terminal in CWD" }) -- This remains unchanged

-- Map snippet to key
local function map_snippet(keys, snippet_key)
  vim.keymap.set("i", keys, function()
    require("luasnip").snip_expand(require("keymap_snippets")[snippet_key])
  end)
end

map_snippet("<a-e>", "iferr")
