#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp2.sats"

#staload "./../SATS/dynexp2.sats"

local
(*
#ifndef _ASSUMED_
#define _GLOBAL_
*)
(* #include "./global.dats" *)
(*
#endif
*)
in

implement totype_sq2arg<> = nameof_sq2arg
implement totype_sq2arglst<> = nameof_sq2arglst
implement totype_tq2arg<> = nameof_tq2arg
implement totype_tq2arglst<> = nameof_tq2arglst
implement totype_d2con<> = nameof_d2con
implement totype_d2conlst<> = nameof_d2conlst
implement totype_d2cst<> = nameof_d2cst
implement totype_d2cstlst<> = nameof_d2cstlst
implement totype_d2cstopt<> = nameof_d2cstopt
implement totype_d2var<> = nameof_d2var
implement totype_d2varlst<> = nameof_d2varlst
implement totype_d2varopt<> = nameof_d2varopt
implement totype_d2itm<> = nameof_d2itm
implement totype_d2itmlst<> = nameof_d2itmlst
implement totype_d2pitm<> = nameof_d2pitm
implement totype_d2pitmlst<> = nameof_d2pitmlst
implement totype_d2pat<> = nameof_d2pat
implement totype_d2patlst<> = nameof_d2patlst
implement totype_f2arg<> = nameof_f2arg
implement totype_f2arglst<> = nameof_f2arglst
implement totype_ti2arg<> = nameof_ti2arg
implement totype_ti2arglst<> = nameof_ti2arglst
implement totype_d2gua<> = nameof_d2gua
implement totype_d2gualst<> = nameof_d2gualst
implement totype_d2clau<> = nameof_d2clau
implement totype_d2claulst<> = nameof_d2claulst
implement totype_d2gpat<> = nameof_d2gpat
implement totype_d2exp<> = nameof_d2exp
implement totype_d2explst<> = nameof_d2explst
implement totype_d2expopt<> = nameof_d2expopt
implement totype_d2explstopt<> = nameof_d2explstopt
implement totype_v2aldecl<> = nameof_v2aldecl
implement totype_v2aldeclist<> = nameof_v2aldeclist
implement totype_v2ardecl<> = nameof_v2ardecl
implement totype_v2ardeclist<> = nameof_v2ardeclist
implement totype_f2undecl<> = nameof_f2undecl
implement totype_f2undeclist<> = nameof_f2undeclist
implement totype_d2ecl<> = nameof_d2ecl
implement totype_d2eclist<> = nameof_d2eclist
implement totype_d2eclistopt<> = nameof_d2eclistopt
implement totype_impls2cst<> = nameof_impls2cst
implement totype_impld2cst<> = nameof_impld2cst
//
implement totype_tag_sq2arg<> = nameof_tag_sq2arg
implement totype_tag_tq2arg<> = nameof_tag_tq2arg
implement totype_tag_d2con<> = nameof_tag_d2con
implement totype_tag_d2cst<> = nameof_tag_d2cst
implement totype_tag_d2var<> = nameof_tag_d2var
implement totype_tag_d2itm<> = nameof_tag_d2itm
implement totype_tag_d2pitm<> = nameof_tag_d2pitm
implement totype_tag_d2pat_node<> = nameof_tag_d2pat_node
implement totype_d2pat_node<> = nameof_d2pat_node
implement totype_tag_f2arg_node<> = nameof_tag_f2arg_node
implement totype_f2arg_node<> = nameof_f2arg_node
implement totype_tag_ti2arg<> = nameof_tag_ti2arg
implement totype_tag_d2gua_node<> = nameof_tag_d2gua_node
implement totype_d2gua_node<> = nameof_d2gua_node
implement totype_tag_d2clau_node<> = nameof_tag_d2clau_node
implement totype_d2clau_node<> = nameof_d2clau_node
implement totype_tag_d2gpat_node<> = nameof_tag_d2gpat_node
implement totype_d2gpat_node<> = nameof_d2gpat_node
implement totype_tag_d2exp_node<> = nameof_tag_d2exp_node
implement totype_d2exp_node<> = nameof_d2exp_node
implement totype_tag_v2aldecl<> = nameof_tag_v2aldecl
implement totype_tag_v2ardecl<> = nameof_tag_v2ardecl
implement totype_tag_f2undecl<> = nameof_tag_f2undecl
implement totype_tag_d2ecl_node<> = nameof_tag_d2ecl_node
implement totype_d2ecl_node<> = nameof_d2ecl_node
implement totype_tag_impls2cst<> = nameof_tag_impls2cst
implement totype_tag_impld2cst<> = nameof_tag_impld2cst

implement{}
schema_d2ecl(x) = @{name=name, args=args}
where
  val node = x.node()
  val name = nameof_tag(node)
  val args = argsof_tag(node)
end

end
