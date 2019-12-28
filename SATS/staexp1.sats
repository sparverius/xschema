#include "./../HATS/x.hats"
#staload "{$x}/SATS/staexp1.sats"

#staload "./schema.sats"

fun{} schema_g1exp : schema_type(g1exp)
fun{} schema_g1explst : schema_type(g1explst)
fun{} schema_g1expopt : schema_type(g1expopt)
overload schema with schema_g1exp
overload schema with schema_g1explst
overload schema with schema_g1expopt

fun{} schema_g1marg : schema_type(g1marg)
fun{} schema_g1marglst : schema_type(g1marglst)
overload schema with schema_g1marg
overload schema with schema_g1marglst

fun{} schema_sort1 : schema_type(sort1)
fun{} schema_sort1lst : schema_type(sort1lst)
fun{} schema_sort1opt : schema_type(sort1opt)
overload schema with schema_sort1
overload schema with schema_sort1lst
overload schema with schema_sort1opt

fun{} schema_s1rtcon : schema_type(s1rtcon)
fun{} schema_s1rtconlst : schema_type(s1rtconlst)
overload schema with schema_s1rtcon
overload schema with schema_s1rtconlst

fun{} schema_d1tsort : schema_type(d1tsort)
fun{} schema_d1tsortlst : schema_type(d1tsortlst)
overload schema with schema_d1tsort
overload schema with schema_d1tsortlst

fun{} schema_s1arg : schema_type(s1arg)
fun{} schema_s1arglst : schema_type(s1arglst)
overload schema with schema_s1arg
overload schema with schema_s1arglst

fun{} schema_s1rtdef : schema_type(s1rtdef)
overload schema with schema_s1rtdef

fun{} schema_s1marg : schema_type(s1marg)
fun{} schema_s1marglst : schema_type(s1marglst)
overload schema with schema_s1marg
overload schema with schema_s1marglst

fun{} schema_t1arg : schema_type(t1arg)
fun{} schema_t1arglst : schema_type(t1arglst)
overload schema with schema_t1arg
overload schema with schema_t1arglst

fun{} schema_t1marg : schema_type(t1marg)
fun{} schema_t1marglst : schema_type(t1marglst)
overload schema with schema_t1marg
overload schema with schema_t1marglst

fun{} schema_s1qua : schema_type(s1qua)
fun{} schema_s1qualst : schema_type(s1qualst)
overload schema with schema_s1qua
overload schema with schema_s1qualst

fun{} schema_s1uni : schema_type(s1uni)
fun{} schema_s1unilst : schema_type(s1unilst)
overload schema with schema_s1uni
overload schema with schema_s1unilst

fun{} schema_s1exp : schema_type(s1exp)
fun{} schema_s1explst : schema_type(s1explst)
fun{} schema_s1expopt : schema_type(s1expopt)
overload schema with schema_s1exp
overload schema with schema_s1explst
overload schema with schema_s1expopt

fun{} schema_labs1explst : schema_type(labs1explst)
overload schema with schema_labs1explst

fun{} schema_effs1expopt : schema_type(effs1expopt)
overload schema with schema_effs1expopt

fun{} schema_d1atcon : schema_type(d1atcon)
fun{} schema_d1atconlst : schema_type(d1atconlst)
overload schema with schema_d1atcon
overload schema with schema_d1atconlst

fun{} schema_d1atype : schema_type(d1atype)
fun{} schema_d1atypelst : schema_type(d1atypelst)
overload schema with schema_d1atype
overload schema with schema_d1atypelst

//

fun{} schema_tag_g1exp_node : schema_type(g1exp_node)
overload schema_tag with schema_tag_g1exp_node

fun{} schema_g1exp_node : schema_type(g1exp_node)
overload schema with schema_g1exp_node

fun{} schema_tag_g1marg_node : schema_type(g1marg_node)
overload schema_tag with schema_tag_g1marg_node

fun{} schema_g1marg_node : schema_type(g1marg_node)
overload schema with schema_g1marg_node

fun{} schema_tag_sort1_node : schema_type(sort1_node)
overload schema_tag with schema_tag_sort1_node

fun{} schema_sort1_node : schema_type(sort1_node)
overload schema with schema_sort1_node

fun{} schema_tag_s1rtcon_node : schema_type(s1rtcon_node)
overload schema_tag with schema_tag_s1rtcon_node

fun{} schema_s1rtcon_node : schema_type(s1rtcon_node)
overload schema with schema_s1rtcon_node

fun{} schema_tag_d1tsort_node : schema_type(d1tsort_node)
overload schema_tag with schema_tag_d1tsort_node

fun{} schema_d1tsort_node : schema_type(d1tsort_node)
overload schema with schema_d1tsort_node

fun{} schema_tag_s1arg_node : schema_type(s1arg_node)
overload schema_tag with schema_tag_s1arg_node

fun{} schema_s1arg_node : schema_type(s1arg_node)
overload schema with schema_s1arg_node

fun{} schema_tag_s1rtdef_node : schema_type(s1rtdef_node)
overload schema_tag with schema_tag_s1rtdef_node

fun{} schema_s1rtdef_node : schema_type(s1rtdef_node)
overload schema with schema_s1rtdef_node

fun{} schema_tag_s1marg_node : schema_type(s1marg_node)
overload schema_tag with schema_tag_s1marg_node

fun{} schema_s1marg_node : schema_type(s1marg_node)
overload schema with schema_s1marg_node

fun{} schema_tag_t1arg_node : schema_type(t1arg_node)
overload schema_tag with schema_tag_t1arg_node

fun{} schema_t1arg_node : schema_type(t1arg_node)
overload schema with schema_t1arg_node

fun{} schema_tag_t1marg_node : schema_type(t1marg_node)
overload schema_tag with schema_tag_t1marg_node

fun{} schema_t1marg_node : schema_type(t1marg_node)
overload schema with schema_t1marg_node

fun{} schema_tag_s1qua_node : schema_type(s1qua_node)
overload schema_tag with schema_tag_s1qua_node

fun{} schema_s1qua_node : schema_type(s1qua_node)
overload schema with schema_s1qua_node

fun{} schema_tag_s1uni_node : schema_type(s1uni_node)
overload schema_tag with schema_tag_s1uni_node

fun{} schema_s1uni_node : schema_type(s1uni_node)
overload schema with schema_s1uni_node

fun{} schema_tag_s1exp_node : schema_type(s1exp_node)
overload schema_tag with schema_tag_s1exp_node

fun{} schema_s1exp_node : schema_type(s1exp_node)
overload schema with schema_s1exp_node

fun{} schema_tag_labs1explst : schema_type(labs1explst)
overload schema_tag with schema_tag_labs1explst

fun{} schema_tag_effs1expopt : schema_type(effs1expopt)
overload schema_tag with schema_tag_effs1expopt

fun{} schema_tag_d1atcon_node : schema_type(d1atcon_node)
overload schema_tag with schema_tag_d1atcon_node

fun{} schema_d1atcon_node : schema_type(d1atcon_node)
overload schema with schema_d1atcon_node

fun{} schema_tag_d1atype_node : schema_type(d1atype_node)
overload schema_tag with schema_tag_d1atype_node

fun{} schema_d1atype_node : schema_type(d1atype_node)
overload schema with schema_d1atype_node
