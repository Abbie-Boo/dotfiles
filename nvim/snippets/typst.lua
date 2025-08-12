return {
  s(
    { trig = "#figure", snippetType = "autosnippet" },
    fmt(
      [[
#figure(
caption: [{}],
supplement: {},
{}
){}
]],
      { i(1), i(2, "[Figure]"), i(3), i(0) }
    )
  ),
}
