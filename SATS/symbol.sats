#include "./../HATS/x.hats"
#staload "{$x}/SATS/symbol.sats"

#staload "./schema.sats"

fun{} schema_sym_t : schema_type(sym_t)
overload schema with schema_sym_t

fun{} schema_symbol : schema_type(symbol)
overload schema with schema_symbol of 1
