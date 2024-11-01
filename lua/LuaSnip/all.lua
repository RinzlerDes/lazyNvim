-- In your snippets.lua
local ls = require("luasnip")
local fmt = require("luasnip.extras.fmt").fmt
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("all", {
  s(
    "iferr",
    fmt(
      [[
if err != nil {{
    {}
}}
  ]],
      {
        -- i(1) is at nodes[1], i(2) at nodes[2].
        i(1),
      }
    )
  ),
})
require("luasnip.loaders.from_lua").lazy_load({ include = { "all" } })
