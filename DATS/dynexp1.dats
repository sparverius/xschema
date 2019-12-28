#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#staload "./../SATS/dynexp1.sats"


local
#include "./global.dats"
in

implement totype_q1arg<> = nameof_q1arg
implement totype_q1arglst<> = nameof_q1arglst
implement totype_sq1arg<> = nameof_sq1arg
implement totype_sq1arglst<> = nameof_sq1arglst
implement totype_tq1arg<> = nameof_tq1arg
implement totype_tq1arglst<> = nameof_tq1arglst
implement totype_ti1arg<> = nameof_ti1arg
implement totype_ti1arglst<> = nameof_ti1arglst
implement totype_a1typ<> = nameof_a1typ
implement totype_a1typlst<> = nameof_a1typlst
implement totype_d1arg<> = nameof_d1arg
implement totype_d1arglst<> = nameof_d1arglst
implement totype_f1arg<> = nameof_f1arg
implement totype_f1arglst<> = nameof_f1arglst
implement totype_d1pat<> = nameof_d1pat
implement totype_d1patlst<> = nameof_d1patlst
implement totype_d1gua<> = nameof_d1gua
implement totype_d1gualst<> = nameof_d1gualst
implement totype_d1clau<> = nameof_d1clau
implement totype_d1claulst<> = nameof_d1claulst
implement totype_d1gpat<> = nameof_d1gpat
implement totype_d1exp<> = nameof_d1exp
implement totype_d1explst<> = nameof_d1explst
implement totype_d1expopt<> = nameof_d1expopt
implement totype_f1unarrow<> = nameof_f1unarrow
implement totype_teqd1expopt<> = nameof_teqd1expopt
implement totype_wths1expopt<> = nameof_wths1expopt
implement totype_v1aldecl<> = nameof_v1aldecl
implement totype_v1aldeclist<> = nameof_v1aldeclist
implement totype_v1ardecl<> = nameof_v1ardecl
implement totype_v1ardeclist<> = nameof_v1ardeclist
implement totype_f1undecl<> = nameof_f1undecl
implement totype_f1undeclist<> = nameof_f1undeclist
implement totype_d1cstdecl<> = nameof_d1cstdecl
implement totype_d1cstdeclist<> = nameof_d1cstdeclist
implement totype_d1ecl<> = nameof_d1ecl
implement totype_d1eclist<> = nameof_d1eclist
implement totype_d1eclistopt<> = nameof_d1eclistopt
implement totype_abstdf1<> = nameof_abstdf1
implement totype_wd1eclseq<> = nameof_wd1eclseq
implement totype_labd1patlst<> = nameof_labd1patlst
implement totype_labd1explst<> = nameof_labd1explst
implement totype_a1typlstopt<> = nameof_a1typlstopt
//
implement totype_tag_q1arg_node<> = nameof_tag_q1arg_node
implement totype_q1arg_node<> = nameof_q1arg_node
implement totype_tag_sq1arg_node<> = nameof_tag_sq1arg_node
implement totype_sq1arg_node<> = nameof_sq1arg_node
implement totype_tag_tq1arg_node<> = nameof_tag_tq1arg_node
implement totype_tq1arg_node<> = nameof_tq1arg_node
implement totype_tag_ti1arg_node<> = nameof_tag_ti1arg_node
implement totype_ti1arg_node<> = nameof_ti1arg_node
implement totype_tag_a1typ_node<> = nameof_tag_a1typ_node
implement totype_a1typ_node<> = nameof_a1typ_node
implement totype_tag_d1arg_node<> = nameof_tag_d1arg_node
implement totype_d1arg_node<> = nameof_d1arg_node
implement totype_tag_f1arg_node<> = nameof_tag_f1arg_node
implement totype_f1arg_node<> = nameof_f1arg_node
implement totype_tag_d1pat_node<> = nameof_tag_d1pat_node
implement totype_d1pat_node<> = nameof_d1pat_node
implement totype_tag_d1gua_node<> = nameof_tag_d1gua_node
implement totype_d1gua_node<> = nameof_d1gua_node
implement totype_tag_d1clau_node<> = nameof_tag_d1clau_node
implement totype_d1clau_node<> = nameof_d1clau_node
implement totype_tag_d1gpat_node<> = nameof_tag_d1gpat_node
implement totype_d1gpat_node<> = nameof_d1gpat_node
implement totype_tag_d1exp_node<> = nameof_tag_d1exp_node
implement totype_d1exp_node<> = nameof_d1exp_node
implement totype_tag_f1unarrow<> = nameof_tag_f1unarrow
implement totype_tag_teqd1expopt<> = nameof_tag_teqd1expopt
implement totype_tag_wths1expopt<> = nameof_tag_wths1expopt
implement totype_tag_v1aldecl<> = nameof_tag_v1aldecl
implement totype_tag_v1ardecl<> = nameof_tag_v1ardecl
implement totype_tag_f1undecl<> = nameof_tag_f1undecl
implement totype_tag_d1cstdecl<> = nameof_tag_d1cstdecl
implement totype_tag_d1ecl_node<> = nameof_tag_d1ecl_node
implement totype_d1ecl_node<> = nameof_d1ecl_node
implement totype_tag_abstdf1<> = nameof_tag_abstdf1
implement totype_tag_wd1eclseq<> = nameof_tag_wd1eclseq
implement totype_tag_labd1patlst<> = nameof_tag_labd1patlst
implement totype_tag_labd1explst<> = nameof_tag_labd1explst

implement{}
schema_d1ecl(x) = @{name=name, args=args}
where
  val node = x.node()
  val name = nameof_tag(node)
  val args = argsof_tag(node)
end


end
