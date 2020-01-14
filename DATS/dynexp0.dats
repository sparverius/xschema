#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp0.sats"

#staload "./../SATS/dynexp0.sats"

local
#include "./global.dats"
in

implement totype_labd0patlst<> = nameof_labd0patlst
implement totype_labd0explst<> = nameof_labd0explst
implement totype_q0arglst<> = nameof_q0arglst
implement totype_q0arg<> = nameof_q0arg
implement totype_sq0arglst<> = nameof_sq0arglst
implement totype_sq0arg<> = nameof_sq0arg
implement totype_tq0arg<> = nameof_tq0arg
implement totype_tq0arglst<> = nameof_tq0arglst
implement totype_ti0arg<> = nameof_ti0arg
implement totype_ti0arglst<> = nameof_ti0arglst
implement totype_a0typ<> = nameof_a0typ
implement totype_a0typlst<> = nameof_a0typlst
implement totype_a0typopt<> = nameof_a0typopt
implement totype_a0typlstopt<> = nameof_a0typlstopt
implement totype_d0arg<> = nameof_d0arg
implement totype_d0arglst<> = nameof_d0arglst
implement totype_f0arg<> = nameof_f0arg
implement totype_f0arglst<> = nameof_f0arglst
implement totype_d0pat<> = nameof_d0pat
implement totype_d0patlst<> = nameof_d0patlst
implement totype_d0clau<> = nameof_d0clau
implement totype_d0claulst<> = nameof_d0claulst
implement totype_d0gpat<> = nameof_d0gpat
implement totype_d0exp<> = nameof_d0exp
implement totype_d0expopt<> = nameof_d0expopt
implement totype_d0explst<> = nameof_d0explst
implement totype_d0gua<> = nameof_d0gua
implement totype_d0gualst<> = nameof_d0gualst
implement totype_d0ecl<> = nameof_d0ecl
implement totype_d0eclist<> = nameof_d0eclist
//implement(a:type) totype_dl0abeled<a> = nameof_dl0abeled

implement totype_d0pat_RPAREN<> = nameof_d0pat_RPAREN
implement totype_labd0pat_RBRACE<> = nameof_labd0pat_RBRACE
implement totype_d0exp_RPAREN<> = nameof_d0exp_RPAREN
implement totype_labd0exp_RBRACE<> = nameof_labd0exp_RBRACE
implement totype_d0exp_THEN<> = nameof_d0exp_THEN
implement totype_d0exp_ELSE<> = nameof_d0exp_ELSE
implement totype_endwhere<> = nameof_endwhere
implement totype_d0eclseq_WHERE<> = nameof_d0eclseq_WHERE
implement totype_f0unarrow<> = nameof_f0unarrow
implement totype_decmodopt<> = nameof_decmodopt
implement totype_teqd0expopt<> = nameof_teqd0expopt
implement totype_wths0expopt<> = nameof_wths0expopt
implement totype_v0aldecl<> = nameof_v0aldecl
implement totype_v0aldeclist<> = nameof_v0aldeclist
implement totype_v0ardecl<> = nameof_v0ardecl
implement totype_v0ardeclist<> = nameof_v0ardeclist
implement totype_f0undecl<> = nameof_f0undecl
implement totype_f0undeclist<> = nameof_f0undeclist
implement totype_d0cstdecl<> = nameof_d0cstdecl
implement totype_d0cstdeclist<> = nameof_d0cstdeclist
implement totype_precopt<> = nameof_precopt
implement totype_precmod<> = nameof_precmod
implement totype_signint<> = nameof_signint
implement totype_abstdf0<> = nameof_abstdf0
implement totype_g0expdef<> = nameof_g0expdef
implement totype_d0macdef<> = nameof_d0macdef
implement totype_wd0eclseq<> = nameof_wd0eclseq
(*
implement totype_d0pat_RPAREN<>(x) = "d0pat_RPAREN_type"
implement totype_labd0pat_RBRACE<>(x) = "labd0pat_RBRACE_type"
implement totype_d0exp_RPAREN<>(x) = "d0exp_RPAREN_type"
implement totype_labd0exp_RBRACE<>(x) = "labd0exp_RBRACE_type"
implement totype_d0exp_THEN<>(x) = "d0exp_THEN_type"
implement totype_d0exp_ELSE<>(x) = "d0exp_ELSE_type"
implement totype_endwhere<>(x) = "endwhere_type"
implement totype_d0eclseq_WHERE<>(x) = "d0eclseq_WHERE_type"
implement totype_f0unarrow<>(x) = "f0unarrow_type"
implement totype_decmodopt<>(x) = "decmodopt_type"
implement totype_teqd0expopt<>(x) = "teqd0expopt_type"
implement totype_wths0expopt<>(x) = "wths0expopt_type"
implement totype_v0aldecl<>(x) = "v0aldecl_type"
implement totype_v0ardecl<>(x) = "v0ardecl_type"
implement totype_f0undecl<>(x) = "f0undecl_type"
implement totype_d0cstdecl<>(x) = "d0cstdecl_type"
implement totype_precopt<>(x) = "precopt_type"
implement totype_precmod<>(x) = "precmod_type"
implement totype_signint<>(x) = "signint_type"
implement totype_abstdf0<>(x) = "abstdf0_type"
implement totype_g0expdef<>(x) = "g0expdef_type"
implement totype_d0macdef<>(x) = "d0macdef_type"
implement totype_wd0eclseq<>(x) = "wd0eclseq_type"
*)


//
//implement(a:type) totype_tag_dl0abeled<a> = nameof_tag_dl0abeled
implement totype_tag_labd0patlst<> = nameof_tag_labd0patlst
implement totype_tag_labd0explst<> = nameof_tag_labd0explst

implement totype_tag_q0arg_node<> = nameof_tag_q0arg_node
implement totype_q0arg_node<> = nameof_q0arg_node
implement totype_tag_sq0arg_node<> = nameof_tag_sq0arg_node
implement totype_sq0arg_node<> = nameof_sq0arg_node
implement totype_tag_tq0arg_node<> = nameof_tag_tq0arg_node
implement totype_tq0arg_node<> = nameof_tq0arg_node
implement totype_tag_ti0arg_node<> = nameof_tag_ti0arg_node
implement totype_ti0arg_node<> = nameof_ti0arg_node
implement totype_tag_a0typ_node<> = nameof_tag_a0typ_node
implement totype_a0typ_node<> = nameof_a0typ_node
implement totype_tag_d0arg_node<> = nameof_tag_d0arg_node
implement totype_d0arg_node<> = nameof_d0arg_node
implement totype_tag_f0arg_node<> = nameof_tag_f0arg_node
implement totype_f0arg_node<> = nameof_f0arg_node
implement totype_tag_d0pat_node<> = nameof_tag_d0pat_node
implement totype_d0pat_node<> = nameof_d0pat_node
implement totype_tag_d0clau_node<> = nameof_tag_d0clau_node
implement totype_d0clau_node<> = nameof_d0clau_node
implement totype_tag_d0gpat_node<> = nameof_tag_d0gpat_node
implement totype_d0gpat_node<> = nameof_d0gpat_node
implement totype_tag_d0exp_node<> = nameof_tag_d0exp_node
implement totype_d0exp_node<> = nameof_d0exp_node
implement totype_tag_d0gua_node<> = nameof_tag_d0gua_node
implement totype_d0gua_node<> = nameof_d0gua_node
implement totype_tag_d0ecl_node<> = nameof_tag_d0ecl_node
implement totype_d0ecl_node<> = nameof_d0ecl_node

implement totype_tag_d0exp_THEN<> = nameof_tag_d0exp_THEN
implement totype_tag_d0exp_ELSE<> = nameof_tag_d0exp_ELSE

implement totype_tag_d0pat_RPAREN<> = nameof_tag_d0pat_RPAREN
implement totype_tag_labd0pat_RBRACE<> = nameof_tag_labd0pat_RBRACE
implement totype_tag_d0exp_RPAREN<> = nameof_tag_d0exp_RPAREN
implement totype_tag_labd0exp_RBRACE<> = nameof_tag_labd0exp_RBRACE
implement totype_tag_endwhere<> = nameof_tag_endwhere
implement totype_tag_d0eclseq_WHERE<> = nameof_tag_d0eclseq_WHERE
implement totype_tag_f0unarrow<> = nameof_tag_f0unarrow
implement totype_tag_decmodopt<> = nameof_tag_decmodopt
implement totype_tag_teqd0expopt<> = nameof_tag_teqd0expopt
implement totype_tag_wths0expopt<> = nameof_tag_wths0expopt
implement totype_tag_v0aldecl<> = nameof_tag_v0aldecl
implement totype_tag_v0ardecl<> = nameof_tag_v0ardecl
implement totype_tag_f0undecl<> = nameof_tag_f0undecl
implement totype_tag_d0cstdecl<> = nameof_tag_d0cstdecl
implement totype_tag_precopt<> = nameof_tag_precopt
implement totype_tag_precmod<> = nameof_tag_precmod
implement totype_tag_signint<> = nameof_tag_signint
implement totype_tag_abstdf0<> = nameof_tag_abstdf0
implement totype_tag_g0expdef<> = nameof_tag_g0expdef
implement totype_tag_d0macdef<> = nameof_tag_d0macdef
implement totype_tag_wd0eclseq<> = nameof_tag_wd0eclseq


implement{} schema_labd0patlst(x) = base2(x)
implement{} schema_labd0explst(x) = base2(x)
implement{} schema_q0arglst(x) = base2(x)
implement{} schema_sq0arglst(x) = base2(x)
implement{} schema_tq0arglst(x) = base2(x)
implement{} schema_ti0arglst(x) = base2(x)
implement{} schema_a0typopt(x) = base2(x)
implement{} schema_a0typlst(x) = base2(x)
implement{} schema_a0typlstopt(x) = base2(x)
implement{} schema_d0arglst(x) = base2(x)
implement{} schema_f0arglst(x) = base2(x)
implement{} schema_d0patlst(x) = base2(x)
implement{} schema_d0claulst(x) = base2(x)
implement{} schema_d0expopt(x) = base2(x)
implement{} schema_d0explst(x) = base2(x)
implement{} schema_d0gualst(x) = base2(x)
implement{} schema_v0aldeclist(x) = base2(x)
implement{} schema_v0ardeclist(x) = base2(x)
implement{} schema_f0undeclist(x) = base2(x)
implement{} schema_d0cstdeclist(x) = base2(x)
implement{} schema_d0eclist(x) = base2(x)


implement{} schema_q0arg(x) = base(x)
implement{} schema_sq0arg(x) = base(x)
implement{} schema_tq0arg(x) = base(x)
implement{} schema_ti0arg(x) = base(x)
implement{} schema_a0typ(x) = base(x)
implement{} schema_d0arg(x) = base(x)
implement{} schema_f0arg(x) = base(x)
implement{} schema_d0pat(x) = base(x)
implement{} schema_d0pat_RPAREN(x) = base(x)
implement{} schema_labd0pat_RBRACE(x) = base(x)
implement{} schema_d0clau(x) = base(x)
implement{} schema_d0gpat(x) = base(x)
implement{} schema_d0exp(x) = base(x)
implement{} schema_d0exp_RPAREN(x) = base(x)
implement{} schema_labd0exp_RBRACE(x) = base(x)
implement{} schema_d0exp_THEN(x) = base(x)
implement{} schema_d0exp_ELSE(x) = base(x)
implement{} schema_endwhere(x) = base(x)
implement{} schema_d0eclseq_WHERE(x) = base(x)
implement{} schema_f0unarrow(x) = base(x)
implement{} schema_d0gua(x) = base(x)
implement{} schema_decmodopt(x) = base(x)
implement{} schema_teqd0expopt(x) = base(x)
implement{} schema_wths0expopt(x) = base(x)
implement{} schema_v0aldecl(x) = base(x)
implement{} schema_v0ardecl(x) = base(x)
implement{} schema_f0undecl(x) = base(x)
implement{} schema_d0cstdecl(x) = base(x)
implement{} schema_d0ecl(x) = base(x)
implement{} schema_precopt(x) = base(x)
implement{} schema_precmod(x) = base(x)
implement{} schema_signint(x) = base(x)
implement{} schema_abstdf0(x) = base(x)
implement{} schema_g0expdef(x) = base(x)
implement{} schema_d0macdef(x) = base(x)
implement{} schema_wd0eclseq(x) = base(x)


implement schema_val<labd0patlst> = schema_labd0patlst<>
implement schema_val<labd0explst> = schema_labd0explst<>
implement schema_val<q0arg> = schema_q0arg<>
implement schema_val<q0arglst> = schema_q0arglst<>
implement schema_val<sq0arg> = schema_sq0arg<>
implement schema_val<sq0arglst> = schema_sq0arglst<>
implement schema_val<tq0arg> = schema_tq0arg<>
implement schema_val<tq0arglst> = schema_tq0arglst<>
implement schema_val<ti0arg> = schema_ti0arg<>
implement schema_val<ti0arglst> = schema_ti0arglst<>
implement schema_val<a0typ> = schema_a0typ<>
implement schema_val<a0typopt> = schema_a0typopt<>
implement schema_val<a0typlst> = schema_a0typlst<>
implement schema_val<a0typlstopt> = schema_a0typlstopt<>
implement schema_val<d0arg> = schema_d0arg<>
implement schema_val<d0arglst> = schema_d0arglst<>
implement schema_val<f0arg> = schema_f0arg<>
implement schema_val<f0arglst> = schema_f0arglst<>
implement schema_val<d0pat> = schema_d0pat<>
implement schema_val<d0patlst> = schema_d0patlst<>
implement schema_val<d0pat_RPAREN> = schema_d0pat_RPAREN<>
implement schema_val<labd0pat_RBRACE> = schema_labd0pat_RBRACE<>
implement schema_val<d0clau> = schema_d0clau<>
implement schema_val<d0claulst> = schema_d0claulst<>
implement schema_val<d0gpat> = schema_d0gpat<>
implement schema_val<d0exp> = schema_d0exp<>
implement schema_val<d0expopt> = schema_d0expopt<>
implement schema_val<d0explst> = schema_d0explst<>
implement schema_val<d0exp_RPAREN> = schema_d0exp_RPAREN<>
implement schema_val<labd0exp_RBRACE> = schema_labd0exp_RBRACE<>
implement schema_val<d0exp_THEN> = schema_d0exp_THEN<>
implement schema_val<d0exp_ELSE> = schema_d0exp_ELSE<>
implement schema_val<endwhere> = schema_endwhere<>
implement schema_val<d0eclseq_WHERE> = schema_d0eclseq_WHERE<>
implement schema_val<f0unarrow> = schema_f0unarrow<>
implement schema_val<d0gua> = schema_d0gua<>
implement schema_val<d0gualst> = schema_d0gualst<>
implement schema_val<decmodopt> = schema_decmodopt<>
implement schema_val<teqd0expopt> = schema_teqd0expopt<>
implement schema_val<wths0expopt> = schema_wths0expopt<>
implement schema_val<v0aldecl> = schema_v0aldecl<>
implement schema_val<v0aldeclist> = schema_v0aldeclist<>
implement schema_val<v0ardecl> = schema_v0ardecl<>
implement schema_val<v0ardeclist> = schema_v0ardeclist<>
implement schema_val<f0undecl> = schema_f0undecl<>
implement schema_val<f0undeclist> = schema_f0undeclist<>
implement schema_val<d0cstdecl> = schema_d0cstdecl<>
implement schema_val<d0cstdeclist> = schema_d0cstdeclist<>
implement schema_val<d0ecl> = schema_d0ecl<>
implement schema_val<d0eclist> = schema_d0eclist<>
implement schema_val<precopt> = schema_precopt<>
implement schema_val<precmod> = schema_precmod<>
implement schema_val<signint> = schema_signint<>
implement schema_val<abstdf0> = schema_abstdf0<>
implement schema_val<g0expdef> = schema_g0expdef<>
implement schema_val<d0macdef> = schema_d0macdef<>
implement schema_val<wd0eclseq> = schema_wd0eclseq<>



//


(*
fun{a:type} schema_tag_dl0abeled : schema_type(dl0abeled(a))
*)


implement{} schema_q0arg_node(x) = tags(x)
implement{} schema_sq0arg_node(x) = tags(x)
implement{} schema_tq0arg_node(x) = tags(x)
implement{} schema_ti0arg_node(x) = tags(x)
implement{} schema_a0typ_node(x) = tags(x)
implement{} schema_d0arg_node(x) = tags(x)
implement{} schema_f0arg_node(x) = tags(x)
implement{} schema_d0pat_node(x) = tags(x)
implement{} schema_d0clau_node(x) = tags(x)
implement{} schema_d0gpat_node(x) = tags(x)
implement{} schema_d0exp_node(x) = tags(x)
implement{} schema_d0gua_node(x) = tags(x)
implement{} schema_d0ecl_node(x) = tags(x)



implement{} schema_tag_labd0patlst(x) = tags(x)
implement{} schema_tag_labd0explst(x) = tags(x)
implement{} schema_tag_q0arg_node(x) = tags(x)
implement{} schema_tag_sq0arg_node(x) = tags(x)
implement{} schema_tag_tq0arg_node(x) = tags(x)
implement{} schema_tag_ti0arg_node(x) = tags(x)
implement{} schema_tag_a0typ_node(x) = tags(x)
implement{} schema_tag_d0arg_node(x) = tags(x)
implement{} schema_tag_f0arg_node(x) = tags(x)
implement{} schema_tag_d0pat_node(x) = tags(x)
implement{} schema_tag_d0clau_node(x) = tags(x)
implement{} schema_tag_d0gpat_node(x) = tags(x)
implement{} schema_tag_d0exp_node(x) = tags(x)
implement{} schema_tag_d0gua_node(x) = tags(x)
implement{} schema_tag_d0ecl_node(x) = tags(x)
implement{} schema_tag_d0pat_RPAREN(x) = tags(x)
implement{} schema_tag_labd0pat_RBRACE(x) = tags(x)
implement{} schema_tag_d0exp_RPAREN(x) = tags(x)
implement{} schema_tag_labd0exp_RBRACE(x) = tags(x)
implement{} schema_tag_d0exp_THEN(x) = tags(x)
implement{} schema_tag_d0exp_ELSE(x) = tags(x)
implement{} schema_tag_endwhere(x) = tags(x)
implement{} schema_tag_d0eclseq_WHERE(x) = tags(x)
implement{} schema_tag_f0unarrow(x) = tags(x)
implement{} schema_tag_decmodopt(x) = tags(x)
implement{} schema_tag_teqd0expopt(x) = tags(x)
implement{} schema_tag_wths0expopt(x) = tags(x)
implement{} schema_tag_v0aldecl(x) = tags(x)
implement{} schema_tag_v0ardecl(x) = tags(x)
implement{} schema_tag_f0undecl(x) = tags(x)
implement{} schema_tag_d0cstdecl(x) = tags(x)
implement{} schema_tag_precopt(x) = tags(x)
implement{} schema_tag_precmod(x) = tags(x)
implement{} schema_tag_signint(x) = tags(x)
implement{} schema_tag_abstdf0(x) = tags(x)
implement{} schema_tag_g0expdef(x) = tags(x)
implement{} schema_tag_d0macdef(x) = tags(x)
implement{} schema_tag_wd0eclseq(x) = tags(x)


implement schema_tag_val<d0ecl_tbox>(x0) = schema_d0ecl_node<>(x0.node())

implement schema_tag_val<labd0patlst> = schema_labd0patlst<>
implement schema_tag_val<labd0explst> = schema_labd0explst<>
implement schema_tag_val<q0arg_node> = schema_q0arg_node<>
implement schema_tag_val<sq0arg_node> = schema_sq0arg_node<>
implement schema_tag_val<tq0arg_node> = schema_tq0arg_node<>
implement schema_tag_val<ti0arg_node> = schema_ti0arg_node<>
implement schema_tag_val<a0typ_node> = schema_a0typ_node<>
implement schema_tag_val<d0arg_node> = schema_d0arg_node<>
implement schema_tag_val<f0arg_node> = schema_f0arg_node<>
implement schema_tag_val<d0pat_node> = schema_d0pat_node<>
implement schema_tag_val<d0clau_node> = schema_d0clau_node<>
implement schema_tag_val<d0gpat_node> = schema_d0gpat_node<>
implement schema_tag_val<d0exp_node> = schema_d0exp_node<>
implement schema_tag_val<d0gua_node> = schema_d0gua_node<>
implement schema_tag_val<d0ecl_node> = schema_d0ecl_node<>
implement schema_tag_val<d0pat_RPAREN> = schema_tag_d0pat_RPAREN<>
implement schema_tag_val<labd0pat_RBRACE> = schema_tag_labd0pat_RBRACE<>
implement schema_tag_val<d0exp_RPAREN> = schema_tag_d0exp_RPAREN<>
implement schema_tag_val<labd0exp_RBRACE> = schema_tag_labd0exp_RBRACE<>
implement schema_tag_val<d0exp_THEN> = schema_tag_d0exp_THEN<>
implement schema_tag_val<d0exp_ELSE> = schema_tag_d0exp_ELSE<>
implement schema_tag_val<endwhere> = schema_tag_endwhere<>
implement schema_tag_val<d0eclseq_WHERE> = schema_tag_d0eclseq_WHERE<>
implement schema_tag_val<f0unarrow> = schema_tag_f0unarrow<>
implement schema_tag_val<decmodopt> = schema_tag_decmodopt<>
implement schema_tag_val<teqd0expopt> = schema_tag_teqd0expopt<>
implement schema_tag_val<wths0expopt> = schema_tag_wths0expopt<>
implement schema_tag_val<v0aldecl> = schema_tag_v0aldecl<>
implement schema_tag_val<v0ardecl> = schema_tag_v0ardecl<>
implement schema_tag_val<f0undecl> = schema_tag_f0undecl<>
implement schema_tag_val<d0cstdecl> = schema_tag_d0cstdecl<>
implement schema_tag_val<precopt> = schema_tag_precopt<>
implement schema_tag_val<precmod> = schema_tag_precmod<>
implement schema_tag_val<signint> = schema_tag_signint<>
implement schema_tag_val<abstdf0> = schema_tag_abstdf0<>
implement schema_tag_val<g0expdef> = schema_tag_g0expdef<>
implement schema_tag_val<d0macdef> = schema_tag_d0macdef<>
implement schema_tag_val<wd0eclseq> = schema_tag_wd0eclseq<>

end
