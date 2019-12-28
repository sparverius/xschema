#include "./../HATS/x.hats"
#staload "{$x}/SATS/filpath.sats"

#staload "./schema.sats"

fun{} schema_filpath : schema_type(filpath)
overload schema with schema_filpath


fun{} schema_filpathopt : schema_type(filpathopt)
overload schema with schema_filpathopt
