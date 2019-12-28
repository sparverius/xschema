#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp3.sats"

#staload "./schema.sats"

fun{} schema_ti3arg : schema_type(ti3arg)
overload schema with schema_ti3arg

fun{} schema_d3pat : schema_type(d3pat)
fun{} schema_d3patlst : schema_type(d3patlst)
overload schema with schema_d3pat
overload schema with schema_d3patlst

fun{} schema_f3arg : schema_type(f3arg)
fun{} schema_f3arglst : schema_type(f3arglst)
overload schema with schema_f3arg
overload schema with schema_f3arglst

fun{} schema_d3gua : schema_type(d3gua)
fun{} schema_d3gualst : schema_type(d3gualst)
overload schema with schema_d3gua
overload schema with schema_d3gualst

fun{} schema_d3clau : schema_type(d3clau)
fun{} schema_d3claulst : schema_type(d3claulst)
overload schema with schema_d3clau
overload schema with schema_d3claulst

fun{} schema_d3gpat : schema_type(d3gpat)
overload schema with schema_d3gpat

fun{} schema_d3exp : schema_type(d3exp)
fun{} schema_d3explst : schema_type(d3explst)
fun{} schema_d3expopt : schema_type(d3expopt)
overload schema with schema_d3exp
overload schema with schema_d3explst
overload schema with schema_d3expopt

fun{} schema_t2pcast : schema_type(t2pcast)
overload schema with schema_t2pcast

fun{} schema_v3aldecl : schema_type(v3aldecl)
fun{} schema_v3aldeclist : schema_type(v3aldeclist)
overload schema with schema_v3aldecl
overload schema with schema_v3aldeclist

fun{} schema_v3ardecl : schema_type(v3ardecl)
fun{} schema_v3ardeclist : schema_type(v3ardeclist)
overload schema with schema_v3ardecl
overload schema with schema_v3ardeclist

fun{} schema_f3undecl : schema_type(f3undecl)
fun{} schema_f3undeclist : schema_type(f3undeclist)
overload schema with schema_f3undecl
overload schema with schema_f3undeclist

fun{} schema_d3ecl : schema_type(d3ecl)
fun{} schema_d3eclist : schema_type(d3eclist)
overload schema with schema_d3ecl
overload schema with schema_d3eclist

//

fun{} schema_tag_ti3arg : schema_type(ti3arg)
overload schema_tag with schema_tag_ti3arg

fun{} schema_tag_d3pat_node : schema_type(d3pat_node)
overload schema_tag with schema_tag_d3pat_node

fun{} schema_d3pat_node : schema_type(d3pat_node)
overload schema with schema_d3pat_node

fun{} schema_tag_f3arg_node : schema_type(f3arg_node)
overload schema_tag with schema_tag_f3arg_node

fun{} schema_f3arg_node : schema_type(f3arg_node)
overload schema with schema_f3arg_node

fun{} schema_tag_d3gua_node : schema_type(d3gua_node)
overload schema_tag with schema_tag_d3gua_node

fun{} schema_d3gua_node : schema_type(d3gua_node)
overload schema with schema_d3gua_node

fun{} schema_tag_d3clau_node : schema_type(d3clau_node)
overload schema_tag with schema_tag_d3clau_node

fun{} schema_d3clau_node : schema_type(d3clau_node)
overload schema with schema_d3clau_node

fun{} schema_tag_d3gpat_node : schema_type(d3gpat_node)
overload schema_tag with schema_tag_d3gpat_node

fun{} schema_d3gpat_node : schema_type(d3gpat_node)
overload schema with schema_d3gpat_node

fun{} schema_tag_d3exp_node : schema_type(d3exp_node)
overload schema_tag with schema_tag_d3exp_node

fun{} schema_d3exp_node : schema_type(d3exp_node)
overload schema with schema_d3exp_node

fun{} schema_tag_t2pcast : schema_type(t2pcast)
overload schema_tag with schema_tag_t2pcast

fun{} schema_tag_v3aldecl : schema_type(v3aldecl)
overload schema_tag with schema_tag_v3aldecl

fun{} schema_tag_v3ardecl : schema_type(v3ardecl)
overload schema_tag with schema_tag_v3ardecl

fun{} schema_tag_f3undecl : schema_type(f3undecl)
overload schema_tag with schema_tag_f3undecl

fun{} schema_tag_d3ecl_node : schema_type(d3ecl_node)
overload schema_tag with schema_tag_d3ecl_node

fun{} schema_d3ecl_node : schema_type(d3ecl_node)
overload schema with schema_d3ecl_node
