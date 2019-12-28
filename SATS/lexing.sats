#include "./../HATS/x.hats"
#staload "{$x}/SATS/lexing.sats"

#staload "./schema.sats"

fun{} schema_token : schema_type(token)
overload schema with schema_token

fun{} schema_tnode : schema_type(tnode)
overload schema with schema_tnode

(*
fun{} schema_tokenopt : schema_type(tokenopt)
overload schema with schema_tokenopt

fun{} schema_tokenlst : schema_type(tokenlst)
overload schema with schema_tokenlst
*)

fun{} schema_tag_tnode : schema_type(tnode)
overload schema_tag with schema_tag_tnode
