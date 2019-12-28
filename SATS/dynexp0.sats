#include "./../HATS/x.hats"
#staload "{$x}/SATS/dynexp0.sats"

#staload "./schema.sats"

fun{a:type} schema_dl0abeled : schema_type(dl0abeled(a))

fun{}(*{}*) schema_labd0patlst : schema_type(labd0patlst)
overload schema with schema_labd0patlst

fun{}(*{}*) schema_labd0explst : schema_type(labd0explst)
overload schema with schema_labd0explst

fun{} schema_q0arg : schema_type(q0arg)
fun{} schema_q0arglst : schema_type(q0arglst)
overload schema with schema_q0arg
overload schema with schema_q0arglst

fun{} schema_sq0arg : schema_type(sq0arg)
fun{} schema_sq0arglst : schema_type(sq0arglst)
overload schema with schema_sq0arg
overload schema with schema_sq0arglst

fun{} schema_tq0arg : schema_type(tq0arg)
fun{} schema_tq0arglst : schema_type(tq0arglst)
overload schema with schema_tq0arg
overload schema with schema_tq0arglst

fun{} schema_ti0arg : schema_type(ti0arg)
fun{} schema_ti0arglst : schema_type(ti0arglst)
overload schema with schema_ti0arg
overload schema with schema_ti0arglst

fun{} schema_a0typ : schema_type(a0typ)
fun{} schema_a0typlst : schema_type(a0typlst)
overload schema with schema_a0typ
overload schema with schema_a0typlst

fun{} schema_d0arg : schema_type(d0arg)
fun{} schema_d0arglst : schema_type(d0arglst)
overload schema with schema_d0arg
overload schema with schema_d0arglst

fun{} schema_f0arg : schema_type(f0arg)
fun{} schema_f0arglst : schema_type(f0arglst)
overload schema with schema_f0arg
overload schema with schema_f0arglst

fun{} schema_d0pat : schema_type(d0pat)
fun{} schema_d0patlst : schema_type(d0patlst)
overload schema with schema_d0pat
overload schema with schema_d0patlst

fun{} schema_d0pat_RPAREN : schema_type(d0pat_RPAREN)
overload schema with schema_d0pat_RPAREN

fun{} schema_labd0pat_RBRACE : schema_type(labd0pat_RBRACE)
overload schema with schema_labd0pat_RBRACE

fun{} schema_d0clau : schema_type(d0clau)
fun{} schema_d0claulst : schema_type(d0claulst)
overload schema with schema_d0clau
overload schema with schema_d0claulst

fun{} schema_d0gpat : schema_type(d0gpat)
overload schema with schema_d0gpat

fun{} schema_d0exp : schema_type(d0exp)
fun{} schema_d0expopt : schema_type(d0expopt)
fun{} schema_d0explst : schema_type(d0explst)
overload schema with schema_d0exp
overload schema with schema_d0expopt
overload schema with schema_d0explst

fun{} schema_d0exp_RPAREN : schema_type(d0exp_RPAREN)
overload schema with schema_d0exp_RPAREN

fun{} schema_labd0exp_RBRACE : schema_type(labd0exp_RBRACE)
overload schema with schema_labd0exp_RBRACE

fun{} schema_d0exp_THEN : schema_type(d0exp_THEN)
overload schema with schema_d0exp_THEN

fun{} schema_d0exp_ELSE : schema_type(d0exp_ELSE)
overload schema with schema_d0exp_ELSE

fun{} schema_endwhere : schema_type(endwhere)
overload schema with schema_endwhere

fun{} schema_d0eclseq_WHERE : schema_type(d0eclseq_WHERE)
overload schema with schema_d0eclseq_WHERE

fun{} schema_f0unarrow : schema_type(f0unarrow)
overload schema with schema_f0unarrow

fun{} schema_d0gua : schema_type(d0gua)
fun{} schema_d0gualst : schema_type(d0gualst)
overload schema with schema_d0gua
overload schema with schema_d0gualst

fun{} schema_decmodopt : schema_type(decmodopt)
overload schema with schema_decmodopt

fun{} schema_teqd0expopt : schema_type(teqd0expopt)
overload schema with schema_teqd0expopt

fun{} schema_wths0expopt : schema_type(wths0expopt)
overload schema with schema_wths0expopt

fun{} schema_v0aldecl : schema_type(v0aldecl)
fun{} schema_v0aldeclist : schema_type(v0aldeclist)
overload schema with schema_v0aldecl
overload schema with schema_v0aldeclist

fun{} schema_v0ardecl : schema_type(v0ardecl)
fun{} schema_v0ardeclist : schema_type(v0ardeclist)
overload schema with schema_v0ardecl
overload schema with schema_v0ardeclist

fun{} schema_f0undecl : schema_type(f0undecl)
fun{} schema_f0undeclist : schema_type(f0undeclist)
overload schema with schema_f0undecl
overload schema with schema_f0undeclist

fun{} schema_d0cstdecl : schema_type(d0cstdecl)
fun{} schema_d0cstdeclist : schema_type(d0cstdeclist)
overload schema with schema_d0cstdecl
overload schema with schema_d0cstdeclist

fun{} schema_d0ecl : schema_type(d0ecl)
fun{} schema_d0eclist : schema_type(d0eclist)
overload schema with schema_d0ecl
overload schema with schema_d0eclist

fun{} schema_precopt : schema_type(precopt)
overload schema with schema_precopt

fun{} schema_precmod : schema_type(precmod)
overload schema with schema_precmod

fun{} schema_signint : schema_type(signint)
overload schema with schema_signint

fun{} schema_abstdf0 : schema_type(abstdf0)
overload schema with schema_abstdf0

fun{} schema_g0expdef : schema_type(g0expdef)
overload schema with schema_g0expdef

fun{} schema_d0macdef : schema_type(d0macdef)
overload schema with schema_d0macdef

fun{} schema_wd0eclseq : schema_type(wd0eclseq)
overload schema with schema_wd0eclseq

//

fun{a:type} schema_tag_dl0abeled : schema_type(dl0abeled(a))

fun{} schema_tag_labd0patlst : schema_type(labd0patlst)
overload schema_tag with schema_tag_labd0patlst

fun{} schema_tag_labd0explst : schema_type(labd0explst)
overload schema_tag with schema_tag_labd0explst

fun{} schema_tag_q0arg_node : schema_type(q0arg_node)
overload schema_tag with schema_tag_q0arg_node

fun{} schema_q0arg_node : schema_type(q0arg_node)
overload schema with schema_q0arg_node

fun{} schema_tag_sq0arg_node : schema_type(sq0arg_node)
overload schema_tag with schema_tag_sq0arg_node

fun{} schema_sq0arg_node : schema_type(sq0arg_node)
overload schema with schema_sq0arg_node

fun{} schema_tag_tq0arg_node : schema_type(tq0arg_node)
overload schema_tag with schema_tag_tq0arg_node

fun{} schema_tq0arg_node : schema_type(tq0arg_node)
overload schema with schema_tq0arg_node

fun{} schema_tag_ti0arg_node : schema_type(ti0arg_node)
overload schema_tag with schema_tag_ti0arg_node

fun{} schema_ti0arg_node : schema_type(ti0arg_node)
overload schema with schema_ti0arg_node

fun{} schema_tag_a0typ_node : schema_type(a0typ_node)
overload schema_tag with schema_tag_a0typ_node

fun{} schema_a0typ_node : schema_type(a0typ_node)
overload schema with schema_a0typ_node

fun{} schema_tag_d0arg_node : schema_type(d0arg_node)
overload schema_tag with schema_tag_d0arg_node

fun{} schema_d0arg_node : schema_type(d0arg_node)
overload schema with schema_d0arg_node

fun{} schema_tag_f0arg_node : schema_type(f0arg_node)
overload schema_tag with schema_tag_f0arg_node

fun{} schema_f0arg_node : schema_type(f0arg_node)
overload schema with schema_f0arg_node

fun{} schema_tag_d0pat_node : schema_type(d0pat_node)
overload schema_tag with schema_tag_d0pat_node

fun{} schema_d0pat_node : schema_type(d0pat_node)
overload schema with schema_d0pat_node

fun{} schema_tag_d0clau_node : schema_type(d0clau_node)
overload schema_tag with schema_tag_d0clau_node

fun{} schema_d0clau_node : schema_type(d0clau_node)
overload schema with schema_d0clau_node

fun{} schema_tag_d0gpat_node : schema_type(d0gpat_node)
overload schema_tag with schema_tag_d0gpat_node

fun{} schema_d0gpat_node : schema_type(d0gpat_node)
overload schema with schema_d0gpat_node

fun{} schema_tag_d0exp_node : schema_type(d0exp_node)
overload schema_tag with schema_tag_d0exp_node

fun{} schema_d0exp_node : schema_type(d0exp_node)
overload schema with schema_d0exp_node

fun{} schema_tag_d0gua_node : schema_type(d0gua_node)
overload schema_tag with schema_tag_d0gua_node

fun{} schema_d0gua_node : schema_type(d0gua_node)
overload schema with schema_d0gua_node

fun{} schema_tag_d0ecl_node : schema_type(d0ecl_node)
overload schema_tag with schema_tag_d0ecl_node

fun{} schema_d0ecl_node : schema_type(d0ecl_node)
overload schema with schema_d0ecl_node

fun{} schema_tag_d0pat_RPAREN : schema_type(d0pat_RPAREN)
overload schema_tag with schema_tag_d0pat_RPAREN

fun{} schema_tag_labd0pat_RBRACE : schema_type(labd0pat_RBRACE)
overload schema_tag with schema_tag_labd0pat_RBRACE

fun{} schema_tag_d0exp_RPAREN : schema_type(d0exp_RPAREN)
overload schema_tag with schema_tag_d0exp_RPAREN

fun{} schema_tag_labd0exp_RBRACE : schema_type(labd0exp_RBRACE)
overload schema_tag with schema_tag_labd0exp_RBRACE

fun{} schema_tag_d0exp_THEN : schema_type(d0exp_THEN)
overload schema_tag with schema_tag_d0exp_THEN

fun{} schema_tag_d0exp_ELSE : schema_type(d0exp_ELSE)
overload schema_tag with schema_tag_d0exp_ELSE

fun{} schema_tag_endwhere : schema_type(endwhere)
overload schema_tag with schema_tag_endwhere

fun{} schema_tag_d0eclseq_WHERE : schema_type(d0eclseq_WHERE)
overload schema_tag with schema_tag_d0eclseq_WHERE

fun{} schema_tag_f0unarrow : schema_type(f0unarrow)
overload schema_tag with schema_tag_f0unarrow

fun{} schema_tag_decmodopt : schema_type(decmodopt)
overload schema_tag with schema_tag_decmodopt

fun{} schema_tag_teqd0expopt : schema_type(teqd0expopt)
overload schema_tag with schema_tag_teqd0expopt

fun{} schema_tag_wths0expopt : schema_type(wths0expopt)
overload schema_tag with schema_tag_wths0expopt

fun{} schema_tag_v0aldecl : schema_type(v0aldecl)
overload schema_tag with schema_tag_v0aldecl

fun{} schema_tag_v0ardecl : schema_type(v0ardecl)
overload schema_tag with schema_tag_v0ardecl

fun{} schema_tag_f0undecl : schema_type(f0undecl)
overload schema_tag with schema_tag_f0undecl

fun{} schema_tag_d0cstdecl : schema_type(d0cstdecl)
overload schema_tag with schema_tag_d0cstdecl

fun{} schema_tag_precopt : schema_type(precopt)
overload schema_tag with schema_tag_precopt

fun{} schema_tag_precmod : schema_type(precmod)
overload schema_tag with schema_tag_precmod

fun{} schema_tag_signint : schema_type(signint)
overload schema_tag with schema_tag_signint

fun{} schema_tag_abstdf0 : schema_type(abstdf0)
overload schema_tag with schema_tag_abstdf0

fun{} schema_tag_g0expdef : schema_type(g0expdef)
overload schema_tag with schema_tag_g0expdef

fun{} schema_tag_d0macdef : schema_type(d0macdef)
overload schema_tag with schema_tag_d0macdef

fun{} schema_tag_wd0eclseq : schema_type(wd0eclseq)
overload schema_tag with schema_tag_wd0eclseq
