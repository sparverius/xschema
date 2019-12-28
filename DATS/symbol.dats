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

implement totype_symbol<> = nameof_symbol
implement totype_sym_t<> = nameof_sym_t

end
