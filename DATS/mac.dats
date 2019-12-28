#staload "./../SATS/argsof.sats"

#include "./tolist.dats"

macdef tlist0() =
    tolist0{ret_list_type}()

macdef tlist1(a) =
    tolist1{ret_list_type}(totype,
      ,(a)
    )

macdef tlist2(a, b) =
    tolist2{ret_list_type}(totype,
      ,(a),
      ,(b)
    )

macdef tlist3(a, b, c) =
    tolist3{ret_list_type}(totype,
      ,(a),
      ,(b),
      ,(c)
    )

macdef tlist4(a, b, c, d) =
    tolist4{ret_list_type}(totype,
      ,(a),
      ,(b),
      ,(c),
      ,(d)
    )

macdef tlist5(a, b, c, d, e) =
    tolist5{ret_list_type}(totype,
      ,(a),
      ,(b),
      ,(c),
      ,(d),
      ,(e)
    )

macdef tlist6(a, b, c, d, e, f) =
    tolist6{ret_list_type}(totype,
      ,(a),
      ,(b),
      ,(c),
      ,(d),
      ,(e),
      ,(f)
    )

macdef tlist7(a, b, c, d, e, f, g) =
    tolist7{ret_list_type}(totype,
      ,(a),
      ,(b),
      ,(c),
      ,(d),
      ,(e),
      ,(f),
      ,(g)
    )

macdef tlist8(a, b, c, d, e, f, g, h) =
    tolist8{ret_list_type}(totype,
      ,(a),
      ,(b),
      ,(c),
      ,(d),
      ,(e),
      ,(f),
      ,(g),
      ,(h)
    )

macdef tlist9(a, b, c, d, e, f, g, h, i) =
    tolist9{ret_list_type}(totype,
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

macdef tlist10(a, b, c, d, e, f, g, h, i, j) =
    tolist10{ret_list_type}(totype,
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


(* ****** ****** *)



macdef manual_tlist1(a) =
    manual_tolist1{ret_list_type}(
      ,(a)
    )

macdef manual_tlist2(a, b) =
    manual_tolist2{ret_list_type}(
      ,(a),
      ,(b)
    )

macdef manual_tlist3(a, b, c) =
    manual_tolist3{ret_list_type}(
      ,(a),
      ,(b),
      ,(c)
    )

macdef manual_tlist4(a, b, c, d) =
    manual_tolist4{ret_list_type}(
      ,(a),
      ,(b),
      ,(c),
      ,(d)
    )

macdef manual_tlist5(a, b, c, d, e) =
    manual_tolist5{ret_list_type}(
      ,(a),
      ,(b),
      ,(c),
      ,(d),
      ,(e)
    )

macdef manual_tlist6(a, b, c, d, e, f) =
    manual_tolist6{ret_list_type}(
      ,(a),
      ,(b),
      ,(c),
      ,(d),
      ,(e),
      ,(f)
    )

macdef manual_tlist7(a, b, c, d, e, f, g) =
    manual_tolist7{ret_list_type}(
      ,(a),
      ,(b),
      ,(c),
      ,(d),
      ,(e),
      ,(f),
      ,(g)
    )

macdef manual_tlist8(a, b, c, d, e, f, g, h) =
    manual_tolist8{ret_list_type}(
      ,(a),
      ,(b),
      ,(c),
      ,(d),
      ,(e),
      ,(f),
      ,(g),
      ,(h)
    )

macdef manual_tlist9(a, b, c, d, e, f, g, h, i) =
    manual_tolist9{ret_list_type}(
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

macdef manual_tlist10(a, b, c, d, e, f, g, h, i, j) =
    manual_tolist10{ret_list_type}(
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
