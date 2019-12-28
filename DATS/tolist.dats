macdef tolist0{a:t@ype}() = $list{a}()

macdef tolist1{a:t@ype}(fopr, a) =
  $list{a}
  (
    ,(fopr)(,(a))
  )

macdef tolist2{a:t@ype}(fopr, a, b) =
  $list{a}
  (
    ,(fopr)(,(a)),
    ,(fopr)(,(b))
  )

macdef tolist3{a:t@ype}(fopr, a, b, c) =
  $list{a}
  (
    ,(fopr)(,(a)),
    ,(fopr)(,(b)),
    ,(fopr)(,(c))
  )

macdef tolist4{a:t@ype}(fopr, a, b, c, d) =
  $list{a}
  (
    ,(fopr)(,(a)),
    ,(fopr)(,(b)),
    ,(fopr)(,(c)),
    ,(fopr)(,(d))
  )

macdef tolist5{a:t@ype}(fopr, a, b, c, d, e) =
  $list{a}
  (
    ,(fopr)(,(a)),
    ,(fopr)(,(b)),
    ,(fopr)(,(c)),
    ,(fopr)(,(d)),
    ,(fopr)(,(e))
  )

macdef tolist6{a:t@ype}(fopr, a, b, c, d, e, f) =
  $list{a}
  (
    ,(fopr)(,(a)),
    ,(fopr)(,(b)),
    ,(fopr)(,(c)),
    ,(fopr)(,(d)),
    ,(fopr)(,(e)),
    ,(fopr)(,(f))
  )

macdef tolist7{a:t@ype}(fopr, a, b, c, d, e, f, g) =
  $list{a}
  (
    ,(fopr)(,(a)),
    ,(fopr)(,(b)),
    ,(fopr)(,(c)),
    ,(fopr)(,(d)),
    ,(fopr)(,(e)),
    ,(fopr)(,(f)),
    ,(fopr)(,(g))
  )

macdef tolist8{a:t@ype}(fopr, a, b, c, d, e, f, g, h) =
  $list{a}
  (
    ,(fopr)(,(a)),
    ,(fopr)(,(b)),
    ,(fopr)(,(c)),
    ,(fopr)(,(d)),
    ,(fopr)(,(e)),
    ,(fopr)(,(f)),
    ,(fopr)(,(g)),
    ,(fopr)(,(h))
  )

macdef tolist9{a:t@ype}(fopr, a, b, c, d, e, f, g, h, i) =
  $list{a}
  (
    ,(fopr)(,(a)),
    ,(fopr)(,(b)),
    ,(fopr)(,(c)),
    ,(fopr)(,(d)),
    ,(fopr)(,(e)),
    ,(fopr)(,(f)),
    ,(fopr)(,(g)),
    ,(fopr)(,(h)),
    ,(fopr)(,(i))
  )

macdef tolist10{a:t@ype}(fopr, a, b, c, d, e, f, g, h, i, j) =
  $list{a}
  (
    ,(fopr)(,(a)),
    ,(fopr)(,(b)),
    ,(fopr)(,(c)),
    ,(fopr)(,(d)),
    ,(fopr)(,(e)),
    ,(fopr)(,(f)),
    ,(fopr)(,(g)),
    ,(fopr)(,(h)),
    ,(fopr)(,(i)),
    ,(fopr)(,(j))
  )





(* ****** ****** *)


macdef manual_tolist1{a:t@ype}(a) =
  $list{a}
  (
    ,(a)
  )

macdef manual_tolist2{a:t@ype}(a, b) =
  $list{a}
  (
    ,(a),
    ,(b)
  )

macdef manual_tolist3{a:t@ype}(a, b, c) =
  $list{a}
  (
    ,(a),
    ,(b),
    ,(c)
  )

macdef manual_tolist4{a:t@ype}(a, b, c, d) =
  $list{a}
  (
    ,(a),
    ,(b),
    ,(c),
    ,(d)
  )

macdef manual_tolist5{a:t@ype}(a, b, c, d, e) =
  $list{a}
  (
    ,(a),
    ,(b),
    ,(c),
    ,(d),
    ,(e)
  )

macdef manual_tolist6{a:t@ype}(a, b, c, d, e, f) =
  $list{a}
  (
    ,(a),
    ,(b),
    ,(c),
    ,(d),
    ,(e),
    ,(f)
  )

macdef manual_tolist7{a:t@ype}(a, b, c, d, e, f, g) =
  $list{a}
  (
    ,(a),
    ,(b),
    ,(c),
    ,(d),
    ,(e),
    ,(f),
    ,(g)
  )

macdef manual_tolist8{a:t@ype}(a, b, c, d, e, f, g, h) =
  $list{a}
  (
    ,(a),
    ,(b),
    ,(c),
    ,(d),
    ,(e),
    ,(f),
    ,(g),
    ,(h)
  )

macdef manual_tolist9{a:t@ype}(a, b, c, d, e, f, g, h, i) =
  $list{a}
  (
    ,(a),
    ,(b),
    ,(c),
    ,(d),
    ,(e),
    ,(f),
    ,(g),
    ,(h),
    ,(i)
  )

macdef manual_tolist10{a:t@ype}(a, b, c, d, e, f, g, h, i, j) =
  $list{a}
  (
    ,(a),
    ,(b),
    ,(c),
    ,(d),
    ,(e),
    ,(f),
    ,(g),
    ,(h),
    ,(i),
    ,(j)
  )
