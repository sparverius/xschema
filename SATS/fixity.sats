#include "./../HATS/x.hats"
#staload "{$x}/SATS/fixity.sats"

#staload "./schema.sats"

fun
schema_assoc: schema_type(assoc)
overload schema with schema_assoc

fun
schema_prcdv: schema_type(prcdv)
overload schema with schema_prcdv

fun
schema_fixty: schema_type(fixty)
overload schema with schema_fixty
