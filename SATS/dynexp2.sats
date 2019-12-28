#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp2.sats"

#staload "./schema.sats"

fun{} schema_sq2arg : schema_type(sq2arg)
fun{} schema_sq2arglst : schema_type(sq2arglst)
overload schema with schema_sq2arg
overload schema with schema_sq2arglst

fun{} schema_tq2arg : schema_type(tq2arg)
fun{} schema_tq2arglst : schema_type(tq2arglst)
overload schema with schema_tq2arg
overload schema with schema_tq2arglst

fun{} schema_d2con : schema_type(d2con)
fun{} schema_d2conlst : schema_type(d2conlst)
overload schema with schema_d2con
overload schema with schema_d2conlst

fun{} schema_d2cst : schema_type(d2cst)
fun{} schema_d2cstlst : schema_type(d2cstlst)
fun{} schema_d2cstopt : schema_type(d2cstopt)
overload schema with schema_d2cst
overload schema with schema_d2cstlst
overload schema with schema_d2cstopt

fun{} schema_d2var : schema_type(d2var)
fun{} schema_d2varlst : schema_type(d2varlst)
fun{} schema_d2varopt : schema_type(d2varopt)
overload schema with schema_d2var
overload schema with schema_d2varlst
overload schema with schema_d2varopt

fun{} schema_d2itm : schema_type(d2itm)
fun{} schema_d2itmlst : schema_type(d2itmlst)
overload schema with schema_d2itm
overload schema with schema_d2itmlst

fun{} schema_d2pitm : schema_type(d2pitm)
fun{} schema_d2pitmlst : schema_type(d2pitmlst)
overload schema with schema_d2pitm
overload schema with schema_d2pitmlst

fun{} schema_d2pat : schema_type(d2pat)
fun{} schema_d2patlst : schema_type(d2patlst)
overload schema with schema_d2pat
overload schema with schema_d2patlst

fun{} schema_f2arg : schema_type(f2arg)
fun{} schema_f2arglst : schema_type(f2arglst)
overload schema with schema_f2arg
overload schema with schema_f2arglst

fun{} schema_ti2arg : schema_type(ti2arg)
fun{} schema_ti2arglst : schema_type(ti2arglst)
overload schema with schema_ti2arg
overload schema with schema_ti2arglst

fun{} schema_d2gua : schema_type(d2gua)
fun{} schema_d2gualst : schema_type(d2gualst)
overload schema with schema_d2gua
overload schema with schema_d2gualst

fun{} schema_d2clau : schema_type(d2clau)
fun{} schema_d2claulst : schema_type(d2claulst)
overload schema with schema_d2clau
overload schema with schema_d2claulst

fun{} schema_d2gpat : schema_type(d2gpat)
overload schema with schema_d2gpat

fun{} schema_d2exp : schema_type(d2exp)
fun{} schema_d2explst : schema_type(d2explst)
fun{} schema_d2expopt : schema_type(d2expopt)
overload schema with schema_d2exp
overload schema with schema_d2explst
overload schema with schema_d2expopt

fun{} schema_v2aldecl : schema_type(v2aldecl)
fun{} schema_v2aldeclist : schema_type(v2aldeclist)
overload schema with schema_v2aldecl
overload schema with schema_v2aldeclist

fun{} schema_v2ardecl : schema_type(v2ardecl)
fun{} schema_v2ardeclist : schema_type(v2ardeclist)
overload schema with schema_v2ardecl
overload schema with schema_v2ardeclist

fun{} schema_f2undecl : schema_type(f2undecl)
fun{} schema_f2undeclist : schema_type(f2undeclist)
overload schema with schema_f2undecl
overload schema with schema_f2undeclist

fun{} schema_d2ecl : schema_type(d2ecl)
fun{} schema_d2eclist : schema_type(d2eclist)
overload schema with schema_d2ecl
overload schema with schema_d2eclist

fun{} schema_impls2cst : schema_type(impls2cst)
overload schema with schema_impls2cst

fun{} schema_impld2cst : schema_type(impld2cst)
overload schema with schema_impld2cst

//

fun{} schema_tag_sq2arg : schema_type(sq2arg)
overload schema_tag with schema_tag_sq2arg

fun{} schema_tag_tq2arg : schema_type(tq2arg)
overload schema_tag with schema_tag_tq2arg

fun{} schema_tag_d2con : schema_type(d2con)
overload schema_tag with schema_tag_d2con

fun{} schema_tag_d2cst : schema_type(d2cst)
overload schema_tag with schema_tag_d2cst

fun{} schema_tag_d2var : schema_type(d2var)
overload schema_tag with schema_tag_d2var

fun{} schema_tag_d2itm : schema_type(d2itm)
overload schema_tag with schema_tag_d2itm

fun{} schema_tag_d2pitm : schema_type(d2pitm)
overload schema_tag with schema_tag_d2pitm

fun{} schema_tag_d2pat_node : schema_type(d2pat_node)
overload schema_tag with schema_tag_d2pat_node

fun{} schema_d2pat_node : schema_type(d2pat_node)
overload schema with schema_d2pat_node

fun{} schema_tag_f2arg_node : schema_type(f2arg_node)
overload schema_tag with schema_tag_f2arg_node

fun{} schema_f2arg_node : schema_type(f2arg_node)
overload schema with schema_f2arg_node

fun{} schema_tag_ti2arg : schema_type(ti2arg)
overload schema_tag with schema_tag_ti2arg

fun{} schema_tag_d2gua_node : schema_type(d2gua_node)
overload schema_tag with schema_tag_d2gua_node

fun{} schema_d2gua_node : schema_type(d2gua_node)
overload schema with schema_d2gua_node

fun{} schema_tag_d2clau_node : schema_type(d2clau_node)
overload schema_tag with schema_tag_d2clau_node

fun{} schema_d2clau_node : schema_type(d2clau_node)
overload schema with schema_d2clau_node

fun{} schema_tag_d2gpat_node : schema_type(d2gpat_node)
overload schema_tag with schema_tag_d2gpat_node

fun{} schema_d2gpat_node : schema_type(d2gpat_node)
overload schema with schema_d2gpat_node

fun{} schema_tag_d2exp_node : schema_type(d2exp_node)
overload schema_tag with schema_tag_d2exp_node

fun{} schema_d2exp_node : schema_type(d2exp_node)
overload schema with schema_d2exp_node

fun{} schema_tag_v2aldecl : schema_type(v2aldecl)
overload schema_tag with schema_tag_v2aldecl

fun{} schema_tag_v2ardecl : schema_type(v2ardecl)
overload schema_tag with schema_tag_v2ardecl

fun{} schema_tag_f2undecl : schema_type(f2undecl)
overload schema_tag with schema_tag_f2undecl

fun{} schema_tag_d2ecl_node : schema_type(d2ecl_node)
overload schema_tag with schema_tag_d2ecl_node

fun{} schema_d2ecl_node : schema_type(d2ecl_node)
overload schema with schema_d2ecl_node

fun{} schema_tag_impls2cst : schema_type(impls2cst)
overload schema_tag with schema_tag_impls2cst

fun{} schema_tag_impld2cst : schema_type(impld2cst)
overload schema_tag with schema_tag_impld2cst
