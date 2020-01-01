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


implement{} scm$lst() = false
implement{} scm$opt() = false

implement{}
fprint_scmrec(out, styp) =
{
val () = fprint!(out, "{", "\n", " ")
val () = fprint!(out, "\"name\"", ":", " ", styp.name, ", ")
val () = fprint!(out, "\n", " ")
val () = fprint!(out, "\"args\"", ":", " ", "[")
val x = (
list_iforeach<string>(styp.args) where
  implement(env)
  list_iforeach$fwork<string><env>(i, x, env) =
    (
      (if i > 0 then fprint!(out, ", "));
      (if scm$lst<>() then fprint!(out, "["));
      fprint!(out, "\"", x,"\"");
      (if scm$lst<>() then fprint!(out, "]"));
      (if scm$opt<>() then fprint!(out, "?"))
    )
end
)
val () = fprint!(out, "]")
val () = fprint!(out, "\n", "}")
}

implement{}
print_scmrec(x) = fprint_scmrec(stdout_ref, x)
implement{}
prerr_scmrec(x) = fprint_scmrec(stderr_ref, x)

implement
fprint_val<scmrec> = fprint_scmrec

implement{a}
to_schema_foreach(xs) =
{
  val xys = list_foreach<a>(xs) where
    implement(env)
    list_foreach$fwork<a><env>(x, env) = println!(schema_val<a>(x))
  end
}

implement{a}
to_schema_tag_foreach(xs) =
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

implement{}
fprint_scmrec(out, styp) =
{
val () = fprint!(out, "{ \"name\"", ":", "\"", styp.name, "\", ")
(* val () = fprint!(out, "\"args\"", ":", " {") *)
val () = fprint!(out, "\"args\"", ":", " [")
val x = (
list_iforeach<string>(styp.args) where
  implement(env)
  list_iforeach$fwork<string><env>(i, x, env) =
    (
      (if i > 0 then fprint!(out, ","));
      (* fprint!(out, "\"", i, "\":"); *)
      (if scm$lst<>() then fprint!(out, "["));
      fprint!(out, "\"", x, "\"");
      (if scm$lst<>() then fprint!(out, "]"));
      (if scm$opt<>() then fprint!(out, "?"))
    )
end
)
(* val () = fprint!(out, "} }") *)
val () = fprint!(out, "] }")
}


implement{a}
mapto_schema_tag(xs) = xys where
  val xys = list_map<a><scmrec>(xs) where
    implement
    list_map$fopr<a><scmrec>(x) = schema_tag_val<a>(x)
  end
  val xys = list_of_list_vt{scmrec}(xys)
end

implement{a}
mapto_schema(xs) = xys where
  val xys = list_map<a><scmrec>(xs) where
    implement
    list_map$fopr<a><scmrec>(x) = schema_val<a>(x)
  end
  val xys = list_of_list_vt{scmrec}(xys)
end


implement{}
scmrec_foreach(xs) =
{
  val _ = list_iforeach<scmrec>(xs) where
    implement(env)
    list_iforeach$fwork<scmrec><env>(i, x, env) =
    (
      (if i > 0 then scmrec_foreach$sep<>());
      scmrec_foreach$fwork<>(x)
    )
  end
}

implement{b}
scmrec_map(xs) = xys where
  val xys = list_map<scmrec><b>(xs) where
    implement
    list_map$fopr<scmrec><b>(x) = scmrec_map$fopr<b>(x)
  end
  val xys = list_of_list_vt{b}(xys)
end

(* ****** ****** *)

implement{a}
make_tag_namedscm(str, xs0) = res where
  val xs = mapto_schema_tag<a>(xs0)
  val res = @{name=str, list=xs}
end

implement{a}
make_namedscm(str, xs0) = res where
  val xs = mapto_schema<a>(xs0)
  val res = @{name=str, list=xs}
end



(*
implement{}
fprint_namedscm(out, xs) =
{
  (* val () = print!("{", " ", "\"", xs.name, "\"", ":", " ", "[") *)
  val () = print!("{", "\"", xs.name, "\"", ":", "[")
  val () = scmrec_foreach<>(xs.list) where
    implement
    scmrec_foreach$sep<>() = print!(",")
    implement
    scmrec_foreach$fwork<>(x) = print!(x)
  end
  val () = print!("]}")
} where
  implement
  fprint_scmrec<>(out, styp) =
  {
    val () = fprint!(out, "{", "\"name\"", ":", "\"", styp.name, "\"", ",")
    (* val () = fprint!(out, "\"args\"", ":", " {") *)
    val () = fprint!(out, "\"args\"", ":", "[")
    val x = (
    list_iforeach<string>(styp.args) where
      implement(env)
      list_iforeach$fwork<string><env>(i, x, env) =
        (
          (if i > 0 then fprint!(out, ","));
          (* fprint!(out, "\"", i, "\":"); *)
          (if scm$lst<>() then fprint!(out, "["));
          fprint!(out, "\"", x, "\"");
          (if scm$lst<>() then fprint!(out, "]"));
          (if scm$opt<>() then fprint!(out, "?"))
        )
    end
    )
    (* val () = fprint!(out, "} }") *)
    val () = fprint!(out, "]}")
  }
end
*)

implement{}
fprint_namedscm(out, xs) =
{
  val () = print!("{", "\"", xs.name, "\"", ":", "{")
  val () = scmrec_foreach<>(xs.list) where
    implement
    scmrec_foreach$sep<>() = print!(",")
    implement
    scmrec_foreach$fwork<>(x) = print!(x)
  end
  val () = print!("}}")
} where
  implement
  fprint_scmrec<>(out, styp) =
  {
    val () = fprint!(out, "\"", styp.name, "\"", ":", "[")
    val x = (
    list_iforeach<string>(styp.args) where
      implement(env)
      list_iforeach$fwork<string><env>(i, x, env) =
        (
          (if i > 0 then fprint!(out, ","));
          (* fprint!(out, "\"", i, "\":"); *)
          (if scm$lst<>() then fprint!(out, "["));
          fprint!(out, "\"", x, "\"");
          (if scm$lst<>() then fprint!(out, "]"));
          (if scm$opt<>() then fprint!(out, "?"))
        )
    end
    )
    (* val () = fprint!(out, "} }") *)
    val () = fprint!(out, "]")
  }
end


implement{}
print_namedscm(x) = fprint_namedscm(stdout_ref, x)
implement{}
prerr_namedscm(x) = fprint_namedscm(stderr_ref, x)

implement
fprint_val<namedscm> = fprint_namedscm
