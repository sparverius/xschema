#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#include "./../HATS/x.hats"
#staload "{$x}/SATS/basics.sats"

#staload "./../SATS/basics.sats"


local

in

implement totype_dctkind<> = nameof_dctkind
implement totype_valkind<> = nameof_valkind
implement totype_funkind<> = nameof_funkind
implement totype_impkind<> = nameof_impkind
implement totype_funclo2<> = nameof_funclo2

implement totype_tag_dctkind<> = nameof_tag_dctkind
implement totype_tag_valkind<> = nameof_tag_valkind
implement totype_tag_funkind<> = nameof_tag_funkind
implement totype_tag_impkind<> = nameof_tag_impkind
implement totype_tag_funclo2<> = nameof_tag_funclo2


macdef base(x) = @{name=nameof(,(x)), args=argsof(,(x))}
macdef tags(x) = @{name=nameof_tag(,(x)), args=argsof_tag(,(x))}

implement{} schema_dctkind(dct) = base(dct)
implement{} schema_valkind(vlk) = base(vlk)
implement{} schema_funkind(fnk) = base(fnk)
implement{} schema_impkind(knd) = base(knd)
implement{} schema_funclo2(fc2) = base(fc2)

implement{} schema_tag_dctkind(dct) = tags(dct)
implement{} schema_tag_valkind(vlk) = tags(vlk)
implement{} schema_tag_funkind(fnk) = tags(fnk)
implement{} schema_tag_impkind(knd) = tags(knd)
implement{} schema_tag_funclo2(fc2) = tags(fc2)

implement schema_val<dctkind> = schema_dctkind
implement schema_val<valkind> = schema_valkind
implement schema_val<funkind> = schema_funkind
implement schema_val<impkind> = schema_impkind
implement schema_val<funclo2> = schema_funclo2

implement schema_tag_val<dctkind> = schema_tag_dctkind
implement schema_tag_val<valkind> = schema_tag_valkind
implement schema_tag_val<funkind> = schema_tag_funkind
implement schema_tag_val<impkind> = schema_tag_impkind
implement schema_tag_val<funclo2> = schema_tag_funclo2

end

////

(*
#include "share/atspre_staload.hats"
#staload UN = "prelude/SATS/unsafe.sats"
*)

#include "./../HATS/libxatsopt.hats"
#staload "{$x}/SATS/basics.sats"

#staload "./../SATS/argsof.sats"
#staload "./../SATS/basics.sats"


#include "./mac.dats"


implement{} argsof_dctkind(dct) = tlist1(dct)
implement{} argsof_tag_dctkind(dct) = tlist0()

implement{} argsof_valkind(vlk) = tlist1(vlk)
implement{} argsof_tag_valkind(vlk) = tlist0()

implement{} argsof_funkind(fnk) = tlist1(fnk)
implement{} argsof_tag_funkind(fnk) = tlist0()

implement{} argsof_impkind(knd) = tlist1(knd)
implement{} argsof_tag_impkind(knd) = tlist0()

implement{} argsof_funclo2(knd) = tlist1(knd)

implement{} argsof_tag_funclo2(fc2) =
(
case+ fc2 of
| FC2fun() => tlist0()
| FC2clo(knd) => tlist1(knd)
)
