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

//
implement totype_t2xtv<> = nameof_t2xtv
//
implement totype_labt2ype<> = nameof_labt2ype
implement totype_labt2ypelst<> = nameof_labt2ypelst
implement totype_t2ype<> = nameof_t2ype
implement totype_t2ypelst<> = nameof_t2ypelst
implement totype_tag_labt2ype<> = nameof_tag_labt2ype
implement totype_tag_t2ype_node<> = nameof_tag_t2ype_node
implement totype_t2ype_node<> = nameof_t2ype_node

end
