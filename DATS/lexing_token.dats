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
#staload "{$x}/SATS/lexing.sats"

#staload "./../SATS/lexing.sats"

local
#include "./global.dats"
in

implement totype_tnode<> = nameof_tnode
implement totype_token<> = nameof_token
implement totype_token_tbox<> = nameof_token
implement totype_tokenopt<> = nameof_inner_tokenopt //nameof_tokenopt
implement totype_tokenlst<> = nameof_tokenlst

implement{} schema_token(tk) = base(tk)
implement{} schema_tokenopt(tk) = base(tk)
implement{} schema_tnode(tk) = base(tk)

implement{} schema_tag_tnode(tk) = tags(tk)

implement schema_val<token> = schema_token
implement schema_val<tokenopt> = schema_tokenopt
implement schema_val<token_tbox> = schema_token
implement schema_val<tnode> = schema_tnode
implement schema_tag_val<tnode> = schema_tag_tnode

end
