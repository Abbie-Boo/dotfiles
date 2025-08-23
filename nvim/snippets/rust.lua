return {
  s("scanf", fmt([[
  let mut {} = String::new();
  io::stdin().read_line(&mut {})
  .expect("{}");
  {}
]], { rep(1), i(1, "responce"), i(2, "unable to read line"), i(0) }))
}
