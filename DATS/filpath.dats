#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t

#include "./../HATS/x.hats"
#staload "{$x}/SATS/filpath.sats"

#staload "./../SATS/filpath.sats"

local
#include "./global.dats"
in

implement totype_filpath<> = nameof_filpath
implement totype_filpathopt<> = nameof_filpathopt

implement{} schema_filpath(fp) = base(fp)
implement{} schema_filpathopt(fp) = base(fp)

end
