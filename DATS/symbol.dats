#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t


#include "./../HATS/x.hats"
#staload "{$x}/SATS/symbol.sats"

#staload "./../SATS/symbol.sats"


local
#include "./global.dats"
in

implement totype_symbol<> = nameof_symbol
implement totype_sym_t<> = nameof_sym_t

implement{} schema_symbol(x) = base(x)
implement{} schema_sym_t(x) = base(x)

implement schema_val<symbol> = schema_symbol<>
implement schema_val<sym_t> = schema_sym_t<>

end
