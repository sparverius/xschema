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

implement totype_filpath<> = nameof_filpath
implement totype_filpathopt<> = nameof_filpathopt

end
