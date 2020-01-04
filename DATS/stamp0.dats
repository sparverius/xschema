#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#include "./../HATS/x.hats"
#staload "{$x}/SATS/stamp0.sats"

#staload "./../SATS/stamp0.sats"

local
#include "./global.dats"
in

implement totype_stamp<> = nameof_stamp

implement{} schema_stamp(stm) = base(stm)

end
