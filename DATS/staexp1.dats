#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

local
#include "./global.dats"
in

implement totype_g1exp<> = nameof_g1exp
implement totype_g1explst<> = nameof_g1explst
implement totype_g1expopt<> = nameof_g1expopt
implement totype_g1marg<> = nameof_g1marg
implement totype_g1marglst<> = nameof_g1marglst
implement totype_sort1<> = nameof_sort1
implement totype_sort1lst<> = nameof_sort1lst
implement totype_sort1opt<> = nameof_sort1opt
implement totype_s1rtcon<> = nameof_s1rtcon
implement totype_s1rtconlst<> = nameof_s1rtconlst
implement totype_d1tsort<> = nameof_d1tsort
implement totype_d1tsortlst<> = nameof_d1tsortlst
implement totype_s1arg<> = nameof_s1arg
implement totype_s1arglst<> = nameof_s1arglst
implement totype_s1rtdef<> = nameof_s1rtdef
implement totype_s1marg<> = nameof_s1marg
implement totype_s1marglst<> = nameof_s1marglst
implement totype_t1arg<> = nameof_t1arg
implement totype_t1arglst<> = nameof_t1arglst
implement totype_t1marg<> = nameof_t1marg
implement totype_t1marglst<> = nameof_t1marglst
implement totype_s1qua<> = nameof_s1qua
implement totype_s1qualst<> = nameof_s1qualst
implement totype_s1uni<> = nameof_s1uni
implement totype_s1unilst<> = nameof_s1unilst
implement totype_s1exp<> = nameof_s1exp
implement totype_s1explst<> = nameof_s1explst
implement totype_s1expopt<> = nameof_s1expopt
implement totype_labs1explst<> = nameof_labs1explst
implement totype_effs1expopt<> = nameof_effs1expopt
implement totype_d1atcon<> = nameof_d1atcon
implement totype_d1atconlst<> = nameof_d1atconlst
implement totype_d1atype<> = nameof_d1atype
implement totype_d1atypelst<> = nameof_d1atypelst
//
implement totype_tag_g1exp_node<> = nameof_tag_g1exp_node
implement totype_g1exp_node<> = nameof_g1exp_node
implement totype_tag_g1marg_node<> = nameof_tag_g1marg_node
implement totype_g1marg_node<> = nameof_g1marg_node
implement totype_tag_sort1_node<> = nameof_tag_sort1_node
implement totype_sort1_node<> = nameof_sort1_node
implement totype_tag_s1rtcon_node<> = nameof_tag_s1rtcon_node
implement totype_s1rtcon_node<> = nameof_s1rtcon_node
implement totype_tag_d1tsort_node<> = nameof_tag_d1tsort_node
implement totype_d1tsort_node<> = nameof_d1tsort_node
implement totype_tag_s1arg_node<> = nameof_tag_s1arg_node
implement totype_s1arg_node<> = nameof_s1arg_node
implement totype_tag_s1rtdef_node<> = nameof_tag_s1rtdef_node
implement totype_s1rtdef_node<> = nameof_s1rtdef_node
implement totype_tag_s1marg_node<> = nameof_tag_s1marg_node
implement totype_s1marg_node<> = nameof_s1marg_node
implement totype_tag_t1arg_node<> = nameof_tag_t1arg_node
implement totype_t1arg_node<> = nameof_t1arg_node
implement totype_tag_t1marg_node<> = nameof_tag_t1marg_node
implement totype_t1marg_node<> = nameof_t1marg_node
implement totype_tag_s1qua_node<> = nameof_tag_s1qua_node
implement totype_s1qua_node<> = nameof_s1qua_node
implement totype_tag_s1uni_node<> = nameof_tag_s1uni_node
implement totype_s1uni_node<> = nameof_s1uni_node
implement totype_tag_s1exp_node<> = nameof_tag_s1exp_node
implement totype_s1exp_node<> = nameof_s1exp_node
implement totype_tag_labs1explst<> = nameof_tag_labs1explst
implement totype_tag_effs1expopt<> = nameof_tag_effs1expopt
implement totype_tag_d1atcon_node<> = nameof_tag_d1atcon_node
implement totype_d1atcon_node<> = nameof_d1atcon_node
implement totype_tag_d1atype_node<> = nameof_tag_d1atype_node
implement totype_d1atype_node<> = nameof_d1atype_node

end
