#ifndef LIBS
#define LIBS
#include "./../HATS/libxatsopt.hats"
#include "./../HATS/libxnameof.hats"
#include "./../HATS/libxargsof.hats"
#endif

#staload "./../SATS/schema.sats"
absreimpl ret_list_type_t


#include "./../HATS/x.hats"
#staload "{$x}/SATS/label0.sats"

#staload "./../SATS/label0.sats"



local
#include "./global.dats"
in

implement totype_label<> = nameof_label

implement{} schema_label(x) = base(x)

implement schema_val<label> = schema_label<>



implement{} schema_tag_label(x) = tags(x)

implement schema_tag_val<label> = schema_tag_label<>

end
