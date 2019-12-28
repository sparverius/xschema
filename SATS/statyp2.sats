#include "./../HATS/x.hats"
#staload "{$x}/SATS/statyp2.sats"

#staload "./schema.sats"

fun{} schema_labt2ype: schema_type(labt2ype)
fun{} schema_labt2ypelst: schema_type(labt2ypelst)
overload schema with schema_labt2ype
overload schema with schema_labt2ypelst

fun{} schema_t2ype: schema_type(t2ype)
fun{} schema_t2ypelst: schema_type(t2ypelst)
overload schema with schema_t2ype
overload schema with schema_t2ypelst

//

fun{} schema_tag_labt2ype: schema_type(labt2ype)
overload schema_tag with schema_tag_labt2ype

fun{} schema_tag_t2ype_node: schema_type(t2ype_node)
overload schema_tag with schema_tag_t2ype_node

fun{} schema_t2ype_node: schema_type(t2ype_node)
overload schema with schema_t2ype_node
