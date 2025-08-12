return {
	s("trig", t("loaded!!")),
-- Something.brd -> [something]
  postfix(".brd", {
	d(1, function (_, parent)
		return sn(nil, {t("[" .. parent.env.POSTFIX_MATCH .. "]")})
	end)
}),
-- Something.brd -> "something"
postfix(".brw", {
  d(1, function(_, parent)
    return sn(nil, { t('"' .. parent.env.POSTFIX_MATCH .. '"') })
  end)
})

}
