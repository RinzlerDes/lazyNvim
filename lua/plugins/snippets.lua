return {
  "L3MON4D3/LuaSnip",
  lazy = false, -- Load immediately
  config = function()
    -- Load snippets from the specified directory
    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/LuaSnip/" })

    -- Set up LuaSnip configuration
    require("luasnip").config.setup({
      update_events = "TextChanged,TextChangedI",
      enable_autosnippets = true,
    })
  end,
}
