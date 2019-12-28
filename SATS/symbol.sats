#include "./../HATS/x.hats"
#staload "{$x}/SATS/symbol.sats"

#staload "./schema.sats"

fun{} schema_symbol : schema_type(symbol)
overload schema with schema_symbol
