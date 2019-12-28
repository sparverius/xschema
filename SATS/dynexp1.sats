#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp1.sats"

#staload "./schema.sats"

fun{} schema_q1arg : schema_type(q1arg)
fun{} schema_q1arglst : schema_type(q1arglst)
overload schema with schema_q1arg
overload schema with schema_q1arglst

fun{} schema_sq1arg : schema_type(sq1arg)
fun{} schema_sq1arglst : schema_type(sq1arglst)
overload schema with schema_sq1arg
overload schema with schema_sq1arglst

fun{} schema_tq1arg : schema_type(tq1arg)
fun{} schema_tq1arglst : schema_type(tq1arglst)
overload schema with schema_tq1arg
overload schema with schema_tq1arglst

fun{} schema_ti1arg : schema_type(ti1arg)
fun{} schema_ti1arglst : schema_type(ti1arglst)
overload schema with schema_ti1arg
overload schema with schema_ti1arglst

fun{} schema_a1typ : schema_type(a1typ)
fun{} schema_a1typlst : schema_type(a1typlst)
overload schema with schema_a1typ
overload schema with schema_a1typlst

fun{} schema_d1arg : schema_type(d1arg)
fun{} schema_d1arglst : schema_type(d1arglst)
overload schema with schema_d1arg
overload schema with schema_d1arglst

fun{} schema_f1arg : schema_type(f1arg)
fun{} schema_f1arglst : schema_type(f1arglst)
overload schema with schema_f1arg
overload schema with schema_f1arglst

fun{} schema_d1pat : schema_type(d1pat)
fun{} schema_d1patlst : schema_type(d1patlst)
overload schema with schema_d1pat
overload schema with schema_d1patlst

fun{} schema_d1gua : schema_type(d1gua)
fun{} schema_d1gualst : schema_type(d1gualst)
overload schema with schema_d1gua
overload schema with schema_d1gualst

fun{} schema_d1clau : schema_type(d1clau)
fun{} schema_d1claulst : schema_type(d1claulst)
overload schema with schema_d1clau
overload schema with schema_d1claulst

fun{} schema_d1gpat : schema_type(d1gpat)
overload schema with schema_d1gpat

fun{} schema_d1exp : schema_type(d1exp)
fun{} schema_d1explst : schema_type(d1explst)
fun{} schema_d1expopt : schema_type(d1expopt)
overload schema with schema_d1exp
overload schema with schema_d1explst
overload schema with schema_d1expopt

fun{} schema_f1unarrow : schema_type(f1unarrow)
overload schema with schema_f1unarrow

fun{} schema_teqd1expopt : schema_type(teqd1expopt)
overload schema with schema_teqd1expopt

fun{} schema_wths1expopt : schema_type(wths1expopt)
overload schema with schema_wths1expopt

fun{} schema_v1aldecl : schema_type(v1aldecl)
fun{} schema_v1aldeclist : schema_type(v1aldeclist)
overload schema with schema_v1aldecl
overload schema with schema_v1aldeclist

fun{} schema_v1ardecl : schema_type(v1ardecl)
fun{} schema_v1ardeclist : schema_type(v1ardeclist)
overload schema with schema_v1ardecl
overload schema with schema_v1ardeclist

fun{} schema_f1undecl : schema_type(f1undecl)
fun{} schema_f1undeclist : schema_type(f1undeclist)
overload schema with schema_f1undecl
overload schema with schema_f1undeclist

fun{} schema_d1cstdecl : schema_type(d1cstdecl)
fun{} schema_d1cstdeclist : schema_type(d1cstdeclist)
overload schema with schema_d1cstdecl
overload schema with schema_d1cstdeclist

fun{} schema_d1ecl : schema_type(d1ecl)
fun{} schema_d1eclist : schema_type(d1eclist)
overload schema with schema_d1ecl
overload schema with schema_d1eclist

fun{} schema_abstdf1 : schema_type(abstdf1)
overload schema with schema_abstdf1

fun{} schema_wd1eclseq : schema_type(wd1eclseq)
overload schema with schema_wd1eclseq

fun{} schema_labd1patlst : schema_type(labd1patlst)
overload schema with schema_labd1patlst

fun{} schema_labd1explst : schema_type(labd1explst)
overload schema with schema_labd1explst

fun{} schema_a1typlstopt : schema_type(a1typlstopt)
overload schema with schema_a1typlstopt

//

fun{} schema_tag_q1arg_node : schema_type(q1arg_node)
overload schema_tag with schema_tag_q1arg_node

fun{} schema_q1arg_node : schema_type(q1arg_node)
overload schema with schema_q1arg_node

fun{} schema_tag_sq1arg_node : schema_type(sq1arg_node)
overload schema_tag with schema_tag_sq1arg_node

fun{} schema_sq1arg_node : schema_type(sq1arg_node)
overload schema with schema_sq1arg_node

fun{} schema_tag_tq1arg_node : schema_type(tq1arg_node)
overload schema_tag with schema_tag_tq1arg_node

fun{} schema_tq1arg_node : schema_type(tq1arg_node)
overload schema with schema_tq1arg_node

fun{} schema_tag_ti1arg_node : schema_type(ti1arg_node)
overload schema_tag with schema_tag_ti1arg_node

fun{} schema_ti1arg_node : schema_type(ti1arg_node)
overload schema with schema_ti1arg_node

fun{} schema_tag_a1typ_node : schema_type(a1typ_node)
overload schema_tag with schema_tag_a1typ_node

fun{} schema_a1typ_node : schema_type(a1typ_node)
overload schema with schema_a1typ_node

fun{} schema_tag_d1arg_node : schema_type(d1arg_node)
overload schema_tag with schema_tag_d1arg_node

fun{} schema_d1arg_node : schema_type(d1arg_node)
overload schema with schema_d1arg_node

fun{} schema_tag_f1arg_node : schema_type(f1arg_node)
overload schema_tag with schema_tag_f1arg_node

fun{} schema_f1arg_node : schema_type(f1arg_node)
overload schema with schema_f1arg_node

fun{} schema_tag_d1pat_node : schema_type(d1pat_node)
overload schema_tag with schema_tag_d1pat_node

fun{} schema_d1pat_node : schema_type(d1pat_node)
overload schema with schema_d1pat_node

fun{} schema_tag_d1gua_node : schema_type(d1gua_node)
overload schema_tag with schema_tag_d1gua_node

fun{} schema_d1gua_node : schema_type(d1gua_node)
overload schema with schema_d1gua_node

fun{} schema_tag_d1clau_node : schema_type(d1clau_node)
overload schema_tag with schema_tag_d1clau_node

fun{} schema_d1clau_node : schema_type(d1clau_node)
overload schema with schema_d1clau_node

fun{} schema_tag_d1gpat_node : schema_type(d1gpat_node)
overload schema_tag with schema_tag_d1gpat_node

fun{} schema_d1gpat_node : schema_type(d1gpat_node)
overload schema with schema_d1gpat_node

fun{} schema_tag_d1exp_node : schema_type(d1exp_node)
overload schema_tag with schema_tag_d1exp_node

fun{} schema_d1exp_node : schema_type(d1exp_node)
overload schema with schema_d1exp_node

fun{} schema_tag_f1unarrow : schema_type(f1unarrow)
overload schema_tag with schema_tag_f1unarrow

fun{} schema_tag_teqd1expopt : schema_type(teqd1expopt)
overload schema_tag with schema_tag_teqd1expopt

fun{} schema_tag_wths1expopt : schema_type(wths1expopt)
overload schema_tag with schema_tag_wths1expopt

fun{} schema_tag_v1aldecl : schema_type(v1aldecl)
overload schema_tag with schema_tag_v1aldecl

fun{} schema_tag_v1ardecl : schema_type(v1ardecl)
overload schema_tag with schema_tag_v1ardecl

fun{} schema_tag_f1undecl : schema_type(f1undecl)
overload schema_tag with schema_tag_f1undecl

fun{} schema_tag_d1cstdecl : schema_type(d1cstdecl)
overload schema_tag with schema_tag_d1cstdecl

fun{} schema_tag_d1ecl_node : schema_type(d1ecl_node)
overload schema_tag with schema_tag_d1ecl_node

fun{} schema_d1ecl_node : schema_type(d1ecl_node)
overload schema with schema_d1ecl_node

fun{} schema_tag_abstdf1 : schema_type(abstdf1)
overload schema_tag with schema_tag_abstdf1

fun{} schema_tag_wd1eclseq : schema_type(wd1eclseq)
overload schema_tag with schema_tag_wd1eclseq

fun{} schema_tag_labd1patlst : schema_type(labd1patlst)
overload schema_tag with schema_tag_labd1patlst

fun{} schema_tag_labd1explst : schema_type(labd1explst)
overload schema_tag with schema_tag_labd1explst
