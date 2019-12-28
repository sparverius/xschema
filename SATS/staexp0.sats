#include "./../HATS/x.hats"
#staload "{$x}/SATS/staexp0.sats"

#staload "./schema.sats"

fun{} schema_t0int : schema_type(t0int)
fun{} schema_t0intopt : schema_type(Option(t0int))
overload schema with schema_t0int
overload schema with schema_t0intopt

fun{} schema_t0chr : schema_type(t0chr)
overload schema with schema_t0chr

fun{} schema_t0flt : schema_type(t0flt)
overload schema with schema_t0flt

fun{} schema_t0str : schema_type(t0str)
overload schema with schema_t0str

fun{} schema_i0dnt : schema_type(i0dnt)
fun{} schema_i0dntlst : schema_type(i0dntlst)
fun{} schema_i0dntopt : schema_type(i0dntopt)
overload schema with schema_i0dnt
overload schema with schema_i0dntlst
overload schema with schema_i0dntopt

fun{} schema_l0abl : schema_type(l0abl)
overload schema with schema_l0abl

fun{} schema_s0ymb : schema_type(s0ymb)
overload schema with schema_s0ymb

fun{a:type} schema_sl0abled : schema_type(sl0abled(a))
overload schema with schema_sl0abled

fun{} schema_labs0exp : schema_type(labs0exp)
overload schema with schema_labs0exp

fun{} schema_labs0explst : schema_type(labs0explst)
overload schema with schema_labs0explst

fun{} schema_sq0eid : schema_type(sq0eid)
overload schema with schema_sq0eid

fun{} schema_dq0eid : schema_type(dq0eid)
overload schema with schema_dq0eid

fun{} schema_g0exp : schema_type(g0exp)
fun{} schema_g0explst : schema_type(g0explst)
overload schema with schema_g0exp
overload schema with schema_g0explst

fun{} schema_g0marg : schema_type(g0marg)
fun{} schema_g0marglst : schema_type(g0marglst)
overload schema with schema_g0marg
overload schema with schema_g0marglst

(*
fun{} schema_g0eidlst : schema_type(i0dntlst)
overload schema with schema_g0eidlst
*)

fun{} schema_sort0 : schema_type(sort0)
fun{} schema_sort0lst : schema_type(sort0lst)
fun{} schema_sort0opt : schema_type(sort0opt)
overload schema with schema_sort0
overload schema with schema_sort0lst
overload schema with schema_sort0opt

fun{} schema_s0arglst : schema_type(s0arglst)
overload schema with schema_s0arglst

fun{} schema_s0rtcon : schema_type(s0rtcon)
fun{} schema_s0rtconlst : schema_type(s0rtconlst)
overload schema with schema_s0rtcon
overload schema with schema_s0rtconlst

fun{} schema_d0tsort : schema_type(d0tsort)
fun{} schema_d0tsortlst : schema_type(d0tsortlst)
overload schema with schema_d0tsort
overload schema with schema_d0tsortlst

fun{} schema_s0rtdef : schema_type(s0rtdef)
overload schema with schema_s0rtdef

fun{} schema_s0arg : schema_type(s0arg)
overload schema with schema_s0arg

fun{} schema_s0marg : schema_type(s0marg)
fun{} schema_s0marglst : schema_type(s0marglst)
overload schema with schema_s0marg
overload schema with schema_s0marglst

fun{} schema_t0arg : schema_type(t0arg)
fun{} schema_t0arglst : schema_type(t0arglst)
overload schema with schema_t0arg
overload schema with schema_t0arglst

fun{} schema_t0marg : schema_type(t0marg)
fun{} schema_t0marglst : schema_type(t0marglst)
overload schema with schema_t0marg
overload schema with schema_t0marglst

fun{} schema_s0qua : schema_type(s0qua)
fun{} schema_s0qualst : schema_type(s0qualst)
overload schema with schema_s0qua
overload schema with schema_s0qualst

fun{} schema_s0uni : schema_type(s0uni)
fun{} schema_s0unilst : schema_type(s0unilst)
overload schema with schema_s0uni
overload schema with schema_s0unilst

fun{} schema_s0exp : schema_type(s0exp)
fun{} schema_s0explst : schema_type(s0explst)
fun{} schema_s0expopt : schema_type(s0expopt)
overload schema with schema_s0exp
overload schema with schema_s0explst
overload schema with schema_s0expopt

fun{} schema_s0exp_RPAREN : schema_type(s0exp_RPAREN)
overload schema with schema_s0exp_RPAREN

fun{} schema_labs0exp_RBRACE : schema_type(labs0exp_RBRACE)
overload schema with schema_labs0exp_RBRACE

fun{} schema_effs0expopt : schema_type(effs0expopt)
overload schema with schema_effs0expopt

fun{} schema_d0atcon : schema_type(d0atcon)
fun{} schema_d0atconlst : schema_type(d0atconlst)
overload schema with schema_d0atcon
overload schema with schema_d0atconlst

fun{} schema_d0atype : schema_type(d0atype)
fun{} schema_d0atypelst : schema_type(d0atypelst)
overload schema with schema_d0atype
overload schema with schema_d0atypelst


(* ****** ****** *)

fun{} schema_t0int_node : schema_type(t0int_node)
overload schema with schema_t0int_node

fun{} schema_tag_t0int_node : schema_type(t0int_node)
overload schema_tag with schema_tag_t0int_node

fun{} schema_tag_t0chr_node : schema_type(t0chr_node)
overload schema_tag with schema_tag_t0chr_node

fun{} schema_t0chr_node : schema_type(t0chr_node)
overload schema with schema_t0chr_node

fun{} schema_tag_t0flt_node : schema_type(t0flt_node)
overload schema_tag with schema_tag_t0flt_node

fun{} schema_t0flt_node : schema_type(t0flt_node)
overload schema with schema_t0flt_node

fun{} schema_tag_t0str_node : schema_type(t0str_node)
overload schema_tag with schema_tag_t0str_node

fun{} schema_t0str_node : schema_type(t0str_node)
overload schema with schema_t0str_node

fun{} schema_tag_i0dnt_node : schema_type(i0dnt_node)
overload schema_tag with schema_tag_i0dnt_node

fun{} schema_i0dnt_node : schema_type(i0dnt_node)
overload schema with schema_i0dnt_node

fun{} schema_tag_l0abl_node : schema_type(l0abl_node)
overload schema_tag with schema_tag_l0abl_node

fun{} schema_l0abl_node : schema_type(l0abl_node)
overload schema with schema_l0abl_node

fun{} schema_tag_s0ymb_node : schema_type(s0ymb_node)
overload schema_tag with schema_tag_s0ymb_node

fun{} schema_s0ymb_node : schema_type(s0ymb_node)
overload schema with schema_s0ymb_node

fun{} schema_tag_sq0eid : schema_type(sq0eid)
overload schema_tag with schema_tag_sq0eid

fun{} schema_tag_dq0eid : schema_type(dq0eid)
overload schema_tag with schema_tag_dq0eid

fun{} schema_tag_g0exp_node : schema_type(g0exp_node)
overload schema_tag with schema_tag_g0exp_node

fun{} schema_g0exp_node : schema_type(g0exp_node)
overload schema with schema_g0exp_node

fun{} schema_tag_g0marg_node : schema_type(g0marg_node)
overload schema_tag with schema_tag_g0marg_node

fun{} schema_g0marg_node : schema_type(g0marg_node)
overload schema with schema_g0marg_node

fun{} schema_tag_sort0_node : schema_type(sort0_node)
overload schema_tag with schema_tag_sort0_node

fun{} schema_sort0_node : schema_type(sort0_node)
overload schema with schema_sort0_node

fun{} schema_tag_s0rtcon_node : schema_type(s0rtcon_node)
overload schema_tag with schema_tag_s0rtcon_node

fun{} schema_s0rtcon_node : schema_type(s0rtcon_node)
overload schema with schema_s0rtcon_node

fun{} schema_tag_d0tsort_node : schema_type(d0tsort_node)
overload schema_tag with schema_tag_d0tsort_node

fun{} schema_d0tsort_node : schema_type(d0tsort_node)
overload schema with schema_d0tsort_node

fun{} schema_tag_s0rtdef_node : schema_type(s0rtdef_node)
overload schema_tag with schema_tag_s0rtdef_node

fun{} schema_s0rtdef_node : schema_type(s0rtdef_node)
overload schema with schema_s0rtdef_node

fun{} schema_tag_s0arg_node : schema_type(s0arg_node)
overload schema_tag with schema_tag_s0arg_node

fun{} schema_s0arg_node : schema_type(s0arg_node)
overload schema with schema_tag_s0arg_node

fun{} schema_tag_s0marg_node : schema_type(s0marg_node)
overload schema_tag with schema_tag_s0marg_node

fun{} schema_s0marg_node : schema_type(s0marg_node)
overload schema with schema_tag_s0marg_node

fun{} schema_tag_t0arg_node : schema_type(t0arg_node)
overload schema_tag with schema_tag_t0arg_node

fun{} schema_t0arg_node : schema_type(t0arg_node)
overload schema with schema_tag_t0arg_node

fun{} schema_tag_t0marg_node : schema_type(t0marg_node)
overload schema_tag with schema_tag_t0marg_node

fun{} schema_t0marg_node : schema_type(t0marg_node)
overload schema with schema_tag_t0marg_node

fun{} schema_tag_s0qua_node : schema_type(s0qua_node)
overload schema_tag with schema_tag_s0qua_node

fun{} schema_s0qua_node : schema_type(s0qua_node)
overload schema with schema_tag_s0qua_node

fun{} schema_tag_s0uni_node : schema_type(s0uni_node)
overload schema_tag with schema_tag_s0uni_node

fun{} schema_s0uni_node : schema_type(s0uni_node)
overload schema with schema_tag_s0uni_node

fun{} schema_tag_s0exp_node : schema_type(s0exp_node)
overload schema_tag with schema_tag_s0exp_node

fun{} schema_s0exp_node : schema_type(s0exp_node)
overload schema with schema_tag_s0exp_node

fun{} schema_tag_s0exp_RPAREN : schema_type(s0exp_RPAREN)
overload schema_tag with schema_tag_s0exp_RPAREN

fun{} schema_tag_labs0exp_RBRACE : schema_type(labs0exp_RBRACE)
overload schema_tag with schema_tag_labs0exp_RBRACE

fun{} schema_tag_effs0expopt : schema_type(effs0expopt)
overload schema_tag with schema_tag_effs0expopt

fun{} schema_tag_d0atcon_node : schema_type(d0atcon_node)
overload schema_tag with schema_tag_d0atcon_node

fun{} schema_d0atcon_node : schema_type(d0atcon_node)
overload schema with schema_d0atcon_node

fun{} schema_tag_d0atype_node : schema_type(d0atype_node)
overload schema_tag with schema_tag_d0atype_node

fun{} schema_d0atype_node : schema_type(d0atype_node)
overload schema with schema_d0atype_node

fun{a:type} schema_tag_sl0abled : schema_type(sl0abled(a))
overload schema_tag with schema_tag_sl0abled
