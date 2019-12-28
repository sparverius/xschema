#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#staload "./../SATS/dynexp0.sats"

local
#include "./global.dats"
in

//implement(a:type) totype_dl0abeled<a> = nameof_dl0abeled
implement totype_labd0patlst<> = nameof_labd0patlst
implement totype_labd0explst<> = nameof_labd0explst
implement totype_q0arg<> = nameof_q0arg
implement totype_q0arglst<> = nameof_q0arglst
implement totype_sq0arg<> = nameof_sq0arg
implement totype_sq0arglst<> = nameof_sq0arglst
implement totype_tq0arg<> = nameof_tq0arg
implement totype_tq0arglst<> = nameof_tq0arglst
implement totype_ti0arg<> = nameof_ti0arg
implement totype_ti0arglst<> = nameof_ti0arglst
implement totype_a0typ<> = nameof_a0typ
implement totype_a0typlst<> = nameof_a0typlst
implement totype_a0typlstopt<> = nameof_a0typlstopt
implement totype_d0arg<> = nameof_d0arg
implement totype_d0arglst<> = nameof_d0arglst
implement totype_f0arg<> = nameof_f0arg
implement totype_f0arglst<> = nameof_f0arglst
implement totype_d0pat<> = nameof_d0pat
implement totype_d0patlst<> = nameof_d0patlst
implement totype_d0pat_RPAREN<> = nameof_d0pat_RPAREN
implement totype_labd0pat_RBRACE<> = nameof_labd0pat_RBRACE
implement totype_d0clau<> = nameof_d0clau
implement totype_d0claulst<> = nameof_d0claulst
implement totype_d0gpat<> = nameof_d0gpat
implement totype_d0exp<> = nameof_d0exp
implement totype_d0expopt<> = nameof_d0expopt
implement totype_d0explst<> = nameof_d0explst
implement totype_d0exp_RPAREN<> = nameof_d0exp_RPAREN
implement totype_labd0exp_RBRACE<> = nameof_labd0exp_RBRACE
implement totype_d0exp_THEN<> = nameof_d0exp_THEN
implement totype_d0exp_ELSE<> = nameof_d0exp_ELSE
implement totype_endwhere<> = nameof_endwhere
implement totype_d0eclseq_WHERE<> = nameof_d0eclseq_WHERE
implement totype_f0unarrow<> = nameof_f0unarrow
implement totype_d0gua<> = nameof_d0gua
implement totype_d0gualst<> = nameof_d0gualst
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
implement totype_d0ecl<> = nameof_d0ecl
implement totype_d0eclist<> = nameof_d0eclist
implement totype_precopt<> = nameof_precopt
implement totype_precmod<> = nameof_precmod
implement totype_signint<> = nameof_signint
implement totype_abstdf0<> = nameof_abstdf0
implement totype_g0expdef<> = nameof_g0expdef
implement totype_d0macdef<> = nameof_d0macdef
implement totype_wd0eclseq<> = nameof_wd0eclseq
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
implement totype_tag_d0pat_RPAREN<> = nameof_tag_d0pat_RPAREN
implement totype_tag_labd0pat_RBRACE<> = nameof_tag_labd0pat_RBRACE
implement totype_tag_d0exp_RPAREN<> = nameof_tag_d0exp_RPAREN
implement totype_tag_labd0exp_RBRACE<> = nameof_tag_labd0exp_RBRACE
implement totype_tag_d0exp_THEN<> = nameof_tag_d0exp_THEN
implement totype_tag_d0exp_ELSE<> = nameof_tag_d0exp_ELSE
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


implement{}
schema_d0ecl(x) = @{name=name, args=args}
where
  val node = x.node()
  val name = nameof_tag(node)
  val args = argsof_tag(node)
end


end
