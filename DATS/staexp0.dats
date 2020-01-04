#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#include "./../HATS/x.hats"
#staload "{$x}/SATS/staexp0.sats"

#staload "./../SATS/staexp0.sats"

local
#include "./global.dats"
in

implement totype_t0int<> = nameof_t0int
implement totype_t0intopt<> = nameof_inner_t0intopt //nameof_t0intopt
implement totype_t0chr<> = nameof_t0chr
implement totype_t0flt<> = nameof_t0flt
implement totype_t0str<> = nameof_t0str
implement totype_i0dnt<> = nameof_i0dnt
implement totype_i0dntlst<> = nameof_inner_i0dntlst //nameof_i0dntlst
implement totype_i0dntopt<> = nameof_inner_i0dntopt //nameof_i0dntopt
implement totype_l0abl<> = nameof_l0abl
implement totype_s0ymb<> = nameof_s0ymb
//implement(a:type) totype_sl0abled<a> = nameof_sl0abled
implement totype_labs0exp<> = nameof_labs0exp
implement totype_labs0explst<> = nameof_inner_labs0explst //nameof_labs0explst
implement totype_sq0eid<> = nameof_sq0eid
implement totype_dq0eid<> = nameof_dq0eid
implement totype_g0exp<> = nameof_g0exp
implement totype_g0explst<> = nameof_inner_g0explst //nameof_g0explst
implement totype_g0marg<> = nameof_g0marg
implement totype_g0marglst<> = nameof_inner_g0marglst //nameof_g0marglst
//implement totype_g0eidlst<> = nameof_g0eidlst
implement totype_sort0<> = nameof_sort0
implement totype_sort0lst<> = nameof_inner_sort0lst //nameof_sort0lst
implement totype_sort0opt<> = nameof_inner_sort0opt //nameof_sort0opt
implement totype_s0arglst<> = nameof_inner_s0arglst //nameof_s0arglst
implement totype_s0rtcon<> = nameof_s0rtcon
implement totype_s0rtconlst<> = nameof_inner_s0rtconlst //nameof_s0rtconlst
implement totype_d0tsort<> = nameof_d0tsort
implement totype_d0tsortlst<> = nameof_inner_d0tsortlst //nameof_d0tsortlst
implement totype_s0rtdef<> = nameof_s0rtdef
implement totype_s0arg<> = nameof_s0arg
implement totype_s0marg<> = nameof_s0marg
implement totype_s0marglst<> = nameof_inner_s0marglst //nameof_s0marglst
implement totype_t0arg<> = nameof_t0arg
implement totype_t0arglst<> = nameof_inner_t0arglst //nameof_t0arglst
implement totype_t0marg<> = nameof_t0marg
implement totype_t0marglst<> = nameof_inner_t0marglst //nameof_t0marglst
implement totype_s0qua<> = nameof_s0qua
implement totype_s0qualst<> = nameof_inner_s0qualst //nameof_s0qualst
implement totype_s0uni<> = nameof_s0uni
implement totype_s0unilst<> = nameof_inner_s0unilst //nameof_s0unilst
implement totype_s0exp<> = nameof_s0exp
implement totype_s0explst<> = nameof_inner_s0explst //nameof_s0explst
implement totype_s0expopt<> = nameof_inner_s0expopt //nameof_s0expopt
implement totype_s0exp_RPAREN<> = nameof_s0exp_RPAREN
implement totype_labs0exp_RBRACE<> = nameof_labs0exp_RBRACE
implement totype_effs0expopt<> = nameof_effs0expopt
implement totype_d0atcon<> = nameof_d0atcon
implement totype_d0atconlst<> = nameof_inner_d0atconlst //nameof_d0atconlst
implement totype_d0atype<> = nameof_d0atype
implement totype_d0atypelst<> = nameof_inner_d0atypelst //nameof_d0atypelst


implement totype_t0int_node<> = nameof_t0int_node
implement totype_t0chr_node<> = nameof_t0chr_node
implement totype_t0flt_node<> = nameof_t0flt_node
implement totype_t0str_node<> = nameof_t0str_node
implement totype_i0dnt_node<> = nameof_i0dnt_node
implement totype_l0abl_node<> = nameof_l0abl_node
implement totype_s0ymb_node<> = nameof_s0ymb_node
implement totype_g0exp_node<> = nameof_g0exp_node
implement totype_g0marg_node<> = nameof_g0marg_node
implement totype_sort0_node<> = nameof_sort0_node
implement totype_s0rtcon_node<> = nameof_s0rtcon_node
implement totype_d0tsort_node<> = nameof_d0tsort_node
implement totype_s0rtdef_node<> = nameof_s0rtdef_node
implement totype_s0arg_node<> = nameof_s0arg_node
implement totype_s0marg_node<> = nameof_s0marg_node
implement totype_t0arg_node<> = nameof_t0arg_node
implement totype_t0marg_node<> = nameof_t0marg_node
implement totype_s0qua_node<> = nameof_s0qua_node
implement totype_s0uni_node<> = nameof_s0uni_node
implement totype_s0exp_node<> = nameof_s0exp_node
implement totype_d0atcon_node<> = nameof_d0atcon_node
implement totype_d0atype_node<> = nameof_d0atype_node
//fun{a:type} totype_tag_sl0abled : totype_type(sl0abled(a))

implement totype_tag_t0int_node<> = nameof_tag_t0int_node
implement totype_tag_t0int_node<> = nameof_tag_t0int_node
implement totype_tag_t0chr_node<> = nameof_tag_t0chr_node
implement totype_tag_t0flt_node<> = nameof_tag_t0flt_node
implement totype_tag_t0str_node<> = nameof_tag_t0str_node
implement totype_tag_i0dnt_node<> = nameof_tag_i0dnt_node
implement totype_tag_l0abl_node<> = nameof_tag_l0abl_node
implement totype_tag_s0ymb_node<> = nameof_tag_s0ymb_node
implement totype_tag_sq0eid<> = nameof_tag_sq0eid
implement totype_tag_dq0eid<> = nameof_tag_dq0eid
implement totype_tag_g0exp_node<> = nameof_tag_g0exp_node
implement totype_tag_g0marg_node<> = nameof_tag_g0marg_node
implement totype_tag_sort0_node<> = nameof_tag_sort0_node
implement totype_tag_s0rtcon_node<> = nameof_tag_s0rtcon_node
implement totype_tag_d0tsort_node<> = nameof_tag_d0tsort_node
implement totype_tag_s0rtdef_node<> = nameof_tag_s0rtdef_node
implement totype_tag_s0arg_node<> = nameof_tag_s0arg_node
implement totype_tag_s0marg_node<> = nameof_tag_s0marg_node
implement totype_tag_t0arg_node<> = nameof_tag_t0arg_node
implement totype_tag_t0marg_node<> = nameof_tag_t0marg_node
implement totype_tag_s0qua_node<> = nameof_tag_s0qua_node
implement totype_tag_s0uni_node<> = nameof_tag_s0uni_node
implement totype_tag_s0exp_node<> = nameof_tag_s0exp_node
implement totype_tag_s0exp_RPAREN<> = nameof_tag_s0exp_RPAREN
implement totype_tag_labs0exp_RBRACE<> = nameof_tag_labs0exp_RBRACE
implement totype_tag_effs0expopt<> = nameof_tag_effs0expopt
implement totype_tag_d0atcon_node<> = nameof_tag_d0atcon_node
implement totype_tag_d0atype_node<> = nameof_tag_d0atype_node


implement{} schema_t0int(x) = base(x)
implement{} schema_t0chr(x) = base(x)
implement{} schema_t0flt(x) = base(x)
implement{} schema_t0str(x) = base(x)
implement{} schema_i0dnt(x) = base(x)
implement{} schema_l0abl(x) = base(x)
implement{} schema_s0ymb(x) = base(x)
implement{} schema_labs0exp(x) = base(x)
implement{} schema_labs0explst(x) = base(x)
implement{} schema_sq0eid(x) = base(x)
implement{} schema_dq0eid(x) = base(x)
implement{} schema_g0exp(x) = base(x)
implement{} schema_g0marg(x) = base(x)
implement{} schema_sort0(x) = base(x)
implement{} schema_s0rtcon(x) = base(x)
implement{} schema_d0tsort(x) = base(x)
implement{} schema_s0rtdef(x) = base(x)
implement{} schema_s0arg(x) = base(x)
implement{} schema_s0marg(x) = base(x)
implement{} schema_t0arg(x) = base(x)
implement{} schema_t0marg(x) = base(x)
implement{} schema_s0qua(x) = base(x)
implement{} schema_s0uni(x) = base(x)
implement{} schema_s0exp(x) = base(x)
implement{} schema_s0exp_RPAREN(x) = base(x)
implement{} schema_labs0exp_RBRACE(x) = base(x)
implement{} schema_effs0expopt(x) = base(x)
implement{} schema_d0atcon(x) = base(x)
implement{} schema_d0atype(x) = base(x)

(*
fun{a:type} schema_sl0abled : schema_type(sl0abled(a))
*)

implement{} schema_t0intopt(x) = base(x)
implement{} schema_i0dntlst(x) = base(x)
implement{} schema_i0dntopt(x) = base(x)
implement{} schema_g0explst(x) = base(x)
implement{} schema_g0marglst(x) = base(x)
implement{} schema_sort0lst(x) = base(x)
implement{} schema_sort0opt(x) = base(x)
implement{} schema_s0arglst(x) = base(x)
implement{} schema_s0rtconlst(x) = base(x)
implement{} schema_d0tsortlst(x) = base(x)
implement{} schema_s0marglst(x) = base(x)
implement{} schema_t0arglst(x) = base(x)
implement{} schema_t0marglst(x) = base(x)
implement{} schema_s0qualst(x) = base(x)
implement{} schema_s0unilst(x) = base(x)
implement{} schema_s0explst(x) = base(x)
implement{} schema_s0expopt(x) = base(x)
implement{} schema_d0atconlst(x) = base(x)
implement{} schema_d0atypelst(x) = base(x)


(* ****** ****** *)

implement{} schema_t0int_node(x) = base(x)
implement{} schema_t0flt_node(x) = base(x)
implement{} schema_t0str_node(x) = base(x)
implement{} schema_i0dnt_node(x) = base(x)
implement{} schema_l0abl_node(x) = base(x)
implement{} schema_s0ymb_node(x) = base(x)
implement{} schema_tag_dq0eid(x) = base(x)
implement{} schema_g0exp_node(x) = base(x)
implement{} schema_g0marg_node(x) = base(x)
implement{} schema_sort0_node(x) = base(x)
implement{} schema_s0rtcon_node(x) = base(x)
implement{} schema_d0tsort_node(x) = base(x)
implement{} schema_s0rtdef_node(x) = base(x)
implement{} schema_s0arg_node(x) = base(x)
implement{} schema_s0marg_node(x) = base(x)
implement{} schema_t0arg_node(x) = base(x)
implement{} schema_t0marg_node(x) = base(x)
implement{} schema_s0qua_node(x) = base(x)
implement{} schema_s0uni_node(x) = base(x)
implement{} schema_s0exp_node(x) = base(x)
implement{} schema_d0atcon_node(x) = base(x)
implement{} schema_d0atype_node(x) = base(x)


implement{} schema_tag_t0int_node(x) = tags(x)
implement{} schema_tag_t0chr_node(x) = tags(x)
implement{} schema_tag_t0flt_node(x) = tags(x)
implement{} schema_tag_t0str_node(x) = tags(x)
implement{} schema_tag_i0dnt_node(x) = tags(x)
implement{} schema_tag_l0abl_node(x) = tags(x)
implement{} schema_tag_s0ymb_node(x) = tags(x)
implement{} schema_tag_dq0eid(x) = tags(x)
implement{} schema_tag_sq0eid(x) = tags(x)
implement{} schema_tag_g0exp_node(x) = tags(x)
implement{} schema_tag_g0marg_node(x) = tags(x)
implement{} schema_tag_sort0_node(x) = tags(x)
implement{} schema_tag_s0rtcon_node(x) = tags(x)
implement{} schema_tag_d0tsort_node(x) = tags(x)
implement{} schema_tag_s0rtdef_node(x) = tags(x)
implement{} schema_tag_s0arg_node(x) = tags(x)
implement{} schema_tag_s0marg_node(x) = tags(x)
implement{} schema_tag_t0arg_node(x) = tags(x)
implement{} schema_tag_t0marg_node(x) = tags(x)
implement{} schema_tag_s0qua_node(x) = tags(x)
implement{} schema_tag_s0uni_node(x) = tags(x)
implement{} schema_tag_s0exp_node(x) = tags(x)
implement{} schema_tag_s0exp_RPAREN(x) = tags(x)
implement{} schema_tag_labs0exp_RBRACE(x) = tags(x)
implement{} schema_tag_effs0expopt(x) = tags(x)
implement{} schema_tag_d0atcon_node(x) = tags(x)
implement{} schema_tag_d0atype_node(x) = tags(x)


implement schema_tag_val<t0int_node> = schema_tag_t0int_node
implement schema_tag_val<t0chr_node> = schema_tag_t0chr_node
implement schema_tag_val<t0flt_node> = schema_tag_t0flt_node
implement schema_tag_val<t0str_node> = schema_tag_t0str_node
implement schema_tag_val<i0dnt_node> = schema_tag_i0dnt_node
implement schema_tag_val<l0abl_node> = schema_tag_l0abl_node
implement schema_tag_val<s0ymb_node> = schema_tag_s0ymb_node
implement schema_tag_val<dq0eid> = schema_tag_dq0eid
implement schema_tag_val<sq0eid> = schema_tag_sq0eid
implement schema_tag_val<g0exp_node> = schema_tag_g0exp_node
implement schema_tag_val<g0marg_node> = schema_tag_g0marg_node
implement schema_tag_val<sort0_node> = schema_tag_sort0_node
implement schema_tag_val<s0rtcon_node> = schema_tag_s0rtcon_node
implement schema_tag_val<d0tsort_node> = schema_tag_d0tsort_node
implement schema_tag_val<s0rtdef_node> = schema_tag_s0rtdef_node
implement schema_tag_val<s0arg_node> = schema_tag_s0arg_node
implement schema_tag_val<s0marg_node> = schema_tag_s0marg_node
implement schema_tag_val<t0arg_node> = schema_tag_t0arg_node
implement schema_tag_val<t0marg_node> = schema_tag_t0marg_node
implement schema_tag_val<s0qua_node> = schema_tag_s0qua_node
implement schema_tag_val<s0uni_node> = schema_tag_s0uni_node
implement schema_tag_val<s0exp_node> = schema_tag_s0exp_node
implement schema_tag_val<s0exp_RPAREN> = schema_tag_s0exp_RPAREN
implement schema_tag_val<labs0exp_RBRACE> = schema_tag_labs0exp_RBRACE
implement schema_tag_val<effs0expopt> = schema_tag_effs0expopt
implement schema_tag_val<d0atcon_node> = schema_tag_d0atcon_node
implement schema_tag_val<d0atype_node> = schema_tag_d0atype_node


end
