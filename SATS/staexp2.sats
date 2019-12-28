#include "./../HATS/x.hats"
#staload "{$x}/SATS/staexp2.sats"

#staload "./schema.sats"

fun{} schema_fmodenv: schema_type(fmodenv)
overload schema with schema_fmodenv

fun{} schema_s2xtv: schema_type(s2xtv)
overload schema with schema_s2xtv

fun{} schema_sort2: schema_type(sort2)
fun{} schema_sort2lst: schema_type(sort2lst)
overload schema with schema_sort2
overload schema with schema_sort2lst

fun{} schema_t2bas: schema_type(t2bas)
overload schema with schema_t2bas

fun{} schema_t2abs: schema_type(t2abs)
overload schema with schema_t2abs

fun{} schema_t2dat: schema_type(t2dat)
overload schema with schema_t2dat

fun{} schema_s2cst: schema_type(s2cst)
fun{} schema_s2cstlst: schema_type(s2cstlst)
fun{} schema_s2cstopt: schema_type(s2cstopt)
overload schema with schema_s2cst
overload schema with schema_s2cstlst
overload schema with schema_s2cstopt

fun{} schema_s2var: schema_type(s2var)
fun{} schema_s2varlst: schema_type(s2varlst)
overload schema with schema_s2var
overload schema with schema_s2varlst

fun{} schema_tyrec: schema_type(tyrec)
overload schema with schema_tyrec

fun{} schema_s2txt: schema_type(s2txt)
overload schema with schema_s2txt

fun{} schema_s2exp: schema_type(s2exp)
fun{} schema_s2explst: schema_type(s2explst)
fun{} schema_s2expopt: schema_type(s2expopt)
overload schema with schema_s2exp
overload schema with schema_s2explst
overload schema with schema_s2expopt

fun{} schema_s2hnf: schema_type(s2hnf)
overload schema with schema_s2hnf

fun{} schema_labs2exp: schema_type(labs2exp)
fun{} schema_labs2explst : schema_type(labs2explst)
overload schema with schema_labs2exp
overload schema with schema_labs2explst

fun{} schema_abstdf2: schema_type(abstdf2)
overload schema with schema_abstdf2

fun{} schema_effs2expopt: schema_type(effs2expopt)
overload schema with schema_effs2expopt

fun{} schema_s2itm: schema_type(s2itm)
overload schema with schema_s2itm

//

fun{} schema_tag_sort2: schema_type(sort2)
overload schema_tag with schema_tag_sort2

fun{} schema_tag_t2bas: schema_type(t2bas)
overload schema_tag with schema_tag_t2bas

fun{} schema_tag_tyrec: schema_type(tyrec)
overload schema_tag with schema_tag_tyrec

fun{} schema_tag_s2txt: schema_type(s2txt)
overload schema_tag with schema_tag_s2txt

fun{} schema_tag_s2exp_node: schema_type(s2exp_node)
overload schema_tag with schema_tag_s2exp_node

fun{} schema_s2exp_node: schema_type(s2exp_node)
overload schema with schema_s2exp_node

fun{} schema_tag_s2hnf: schema_type(s2hnf)
overload schema_tag with schema_tag_s2hnf

fun{} schema_tag_labs2exp: schema_type(labs2exp)
overload schema_tag with schema_tag_labs2exp

fun{} schema_tag_abstdf2: schema_type(abstdf2)
overload schema_tag with schema_tag_abstdf2

fun{} schema_tag_effs2expopt: schema_type(effs2expopt)
overload schema_tag with schema_tag_effs2expopt

fun{} schema_tag_s2itm: schema_type(s2itm)
overload schema_tag with schema_tag_s2itm
