#include "share/atspre_staload.hats"

#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#include "./global.dats"

implement
fprint_scmrec(out, styp) =
{
val () = fprint!(out, "{", "\n", " ")
val () = fprint!(out, "\"name\"", ":", " ", styp.name, ", ")
(* val () = fprint!(out, "\n", " ") *)
val () = fprint!(out, "\"args\"", ":", " ", "[")
val x = (
list_iforeach<string>(styp.args) where
  implement(env)
  list_iforeach$fwork<string><env>(i, x, env) =
    (
      (if i > 0 then fprint!(out, ", "));
      fprint!(out, "\"", x,"\"")
    )
end
)
val () = fprint!(out, "]")
val () = fprint!(out, "\n", "}")
}

implement
print_scmrec(x) = fprint_scmrec(stdout_ref, x)
implement
prerr_scmrec(x) = fprint_scmrec(stderr_ref, x)

implement
fprint_val<scmrec> = fprint_scmrec

implement{a}
schema_foreach(xs) =
{
  val xys = list_foreach<a>(xs) where
    implement(env)
    list_foreach$fwork<a><env>(x, env) = println!(schema_val<a>(x))
  end
}

implement{a}
schema_tag_foreach(xs) =
{
  val xys = list_foreach<a>(xs) where
    implement(env)
    list_foreach$fwork<a><env>(x, env) =
      println!(schema_tag_val<a>(x))
  end
}

(*
implement{a}
schema_foreach(xs) = res where
{
  val xys = list_map<a><ret_type>(xs) where
    implement
    list_map$fopr<a><ret_type>(x) = argsof_val<a>(x)
  end
  val res = list_of_list_vt{ret_type}(xys)
}
*)
