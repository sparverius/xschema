#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

local
#include "./global.dats"
in

implement totype_location<> = nameof_location
implement totype_loc_t<> = nameof_loc_t

end
