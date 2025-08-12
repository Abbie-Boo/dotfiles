return {
  s("local", fmt("local {} = require('{}')", {i(1, "default"),rep(1)})),
  s("return", fmt("return {{\n  {}\n}}", { i(0) }))

}
