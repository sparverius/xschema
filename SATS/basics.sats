#include "./../HATS/x.hats"
#staload BAS = "{$x}/SATS/basics.sats"

#staload "./schema.sats"

fun{} schema_dctkind : schema_type($BAS.dctkind)
overload schema with schema_dctkind

fun{} schema_valkind : schema_type($BAS.valkind)
overload schema with schema_valkind

fun{} schema_funkind : schema_type($BAS.funkind)
overload schema with schema_funkind

fun{} schema_impkind : schema_type($BAS.impkind)
overload schema with schema_impkind

fun{} schema_funclo2: schema_type($BAS.funclo2)
overload schema with schema_funclo2

//

fun{} schema_tag_dctkind : schema_type($BAS.dctkind)
overload schema_tag with schema_tag_dctkind

fun{} schema_tag_valkind : schema_type($BAS.valkind)
overload schema_tag with schema_tag_valkind

fun{} schema_tag_funkind : schema_type($BAS.funkind)
overload schema_tag with schema_tag_funkind

fun{} schema_tag_impkind : schema_type($BAS.impkind)
overload schema_tag with schema_tag_impkind

fun{} schema_tag_funclo2: schema_type($BAS.funclo2)
overload schema_tag with schema_tag_funclo2
