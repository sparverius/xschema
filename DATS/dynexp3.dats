#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp3.sats"

#staload "./../SATS/dynexp3.sats"

local
#include "./global.dats"
in

implement totype_ti3arg<> = nameof_ti3arg
implement totype_d3pat<> = nameof_d3pat
implement totype_d3patlst<> = nameof_d3patlst
implement totype_f3arg<> = nameof_f3arg
implement totype_f3arglst<> = nameof_f3arglst
implement totype_d3gua<> = nameof_d3gua
implement totype_d3gualst<> = nameof_d3gualst
implement totype_d3clau<> = nameof_d3clau
implement totype_d3claulst<> = nameof_d3claulst
implement totype_d3gpat<> = nameof_d3gpat
implement totype_d3exp<> = nameof_d3exp
implement totype_d3explst<> = nameof_d3explst
implement totype_d3expopt<> = nameof_d3expopt
implement totype_d3explstopt<> = nameof_d3explstopt
implement totype_t2pcast<> = nameof_t2pcast
implement totype_v3aldecl<> = nameof_v3aldecl
implement totype_v3aldeclist<> = nameof_v3aldeclist
implement totype_v3ardecl<> = nameof_v3ardecl
implement totype_v3ardeclist<> = nameof_v3ardeclist
implement totype_f3undecl<> = nameof_f3undecl
implement totype_f3undeclist<> = nameof_f3undeclist
implement totype_d3ecl<> = nameof_d3ecl
implement totype_d3eclist<> = nameof_d3eclist
implement totype_d3eclistopt<> = nameof_d3eclistopt
//
implement totype_tag_ti3arg<> = nameof_tag_ti3arg
implement totype_tag_d3pat_node<> = nameof_tag_d3pat_node
implement totype_d3pat_node<> = nameof_d3pat_node
implement totype_tag_f3arg_node<> = nameof_tag_f3arg_node
implement totype_f3arg_node<> = nameof_f3arg_node
implement totype_tag_d3gua_node<> = nameof_tag_d3gua_node
implement totype_d3gua_node<> = nameof_d3gua_node
implement totype_tag_d3clau_node<> = nameof_tag_d3clau_node
implement totype_d3clau_node<> = nameof_d3clau_node
implement totype_tag_d3gpat_node<> = nameof_tag_d3gpat_node
implement totype_d3gpat_node<> = nameof_d3gpat_node
implement totype_tag_d3exp_node<> = nameof_tag_d3exp_node
implement totype_d3exp_node<> = nameof_d3exp_node
implement totype_tag_t2pcast<> = nameof_tag_t2pcast
implement totype_tag_v3aldecl<> = nameof_tag_v3aldecl
implement totype_tag_v3ardecl<> = nameof_tag_v3ardecl
implement totype_tag_f3undecl<> = nameof_tag_f3undecl
implement totype_tag_d3ecl_node<> = nameof_tag_d3ecl_node
implement totype_d3ecl_node<> = nameof_d3ecl_node

implement{}
schema_d3ecl(x) = @{name=name, args=args}
where
  val node = x.node()
  val name = nameof_tag(node)
  val args = argsof_tag(node)
end

end
