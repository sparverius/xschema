#include "./../HATS/x.hats"
#staload "{$x}/SATS/locinfo.sats"

#staload "./schema.sats"

fun{} schema_location : schema_type(location)
overload schema with schema_location

fun{} schema_loc_t : schema_type(loc_t)
overload schema with schema_loc_t of 1

(* fun schema_locrange : schema_type(location) *)
(* overload schema with schema_locrange *)
