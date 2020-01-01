#include "./../HATS/x.hats"
#staload "{$XNAME}/SATS/nameof.sats"
#staload "{$XARGS}/SATS/argsof.sats"

assume ret_list_type_t = string

typedef scmrec =
@{
  name=string,
  args=List0(ret_list_type)
}
typedef schema_type(a:t@ype) = a -> scmrec

typedef scmreclst = List0(scmrec)

fun{a:t@ype} schema_val : a -> scmrec
fun{a:t@ype} schema_tag_val : a -> scmrec

fun{} fprint_scmrec(FILEref, scmrec): void
fun{} print_scmrec(scmrec): void
fun{} prerr_scmrec(scmrec): void

overload fprint with fprint_scmrec of 0
overload print with print_scmrec of 0
overload prerr with prerr_scmrec of 0

fun{} scm$lst(): bool
fun{} scm$opt(): bool

symintr schema


fun{a:t@ype} to_schema_foreach(xs: List0(a)): void
fun{a:t@ype} to_schema_tag_foreach(xs: List0(a)): void

fun{a:t@ype} mapto_schema(xs: List0(a)): List0(scmrec)
fun{a:t@ype} mapto_schema_tag(xs: List0(a)): List0(scmrec)


fun{} scmrec_foreach(xs: List0(scmrec)): void
fun{} scmrec_foreach$fwork(xs: scmrec): void
fun{} scmrec_foreach$sep(): void

fun{b:t@ype} scmrec_map(xs: List0(scmrec)): List0(b)
fun{b:t@ype} scmrec_map$fopr(xs: scmrec): b

(* ****** ****** *)

typedef namedscm =
@{
  name=string,
  list=scmreclst
}

fun{a:type} make_tag_namedscm(string, List0(a)): namedscm
overload make with make_tag_namedscm

fun{a:type} make_namedscm(string, List0(a)): namedscm

fun{} fprint_namedscm(FILEref, namedscm): void
fun{} print_namedscm(namedscm): void
fun{} prerr_namedscm(namedscm): void

overload fprint with fprint_namedscm of 0
overload print with print_namedscm of 0
overload prerr with prerr_namedscm of 0
