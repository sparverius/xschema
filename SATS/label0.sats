#include "./../HATS/x.hats"
#staload "{$x}/SATS/label0.sats"

#staload "./schema.sats"

fun{} schema_label : schema_type(label)
overload schema with schema_label

fun{} schema_tag_label : schema_type(label)
overload schema_tag with schema_tag_label
