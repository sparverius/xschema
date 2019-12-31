#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#include "./../HATS/x.hats"
#staload "{$x}/SATS/locinfo.sats"

#staload "./../SATS/locinfo.sats"


local
#include "./global.dats"
in

implement totype_location<> = nameof_location
implement totype_loc_t<> = nameof_loc_t

implement{} schema_location(x) = base(x)
implement{} schema_loc_t(x) = base(x)

implement schema_val<location> = schema_location<>
implement schema_val<loc_t> = schema_loc_t<>

end
