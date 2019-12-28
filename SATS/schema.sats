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

fun{a:t@ype} schema_val : a -> scmrec
fun{a:t@ype} schema_tag_val : a -> scmrec

fun fprint_scmrec(FILEref, scmrec): void
fun print_scmrec(scmrec): void
fun prerr_scmrec(scmrec): void

overload fprint with fprint_scmrec of 0
overload print with print_scmrec of 0
overload prerr with prerr_scmrec of 0

symintr schema


fun{a:t@ype} schema_foreach(xs: List0(a)): void
fun{a:t@ype} schema_tag_foreach(xs: List0(a)): void
