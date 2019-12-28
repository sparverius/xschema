#include "./../HATS/x.hats"
#staload STM = "{$x}/SATS/stamp0.sats"

#staload "./schema.sats"

fun{} schema_stamp : schema_type($STM.stamp)
overload schema with schema_stamp
