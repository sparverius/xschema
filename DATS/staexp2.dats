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

implement totype_sort2<> = nameof_sort2
implement totype_sort2lst<> = nameof_sort2lst
implement totype_t2bas<> = nameof_t2bas
implement totype_t2abs<> = nameof_t2abs
implement totype_t2dat<> = nameof_t2dat
implement totype_s2cst<> = nameof_s2cst
implement totype_s2cstlst<> = nameof_s2cstlst
implement totype_s2cstopt<> = nameof_s2cstopt
implement totype_s2var<> = nameof_s2var
implement totype_s2varlst<> = nameof_s2varlst
implement totype_tyrec<> = nameof_tyrec
implement totype_s2txt<> = nameof_s2txt
implement totype_s2exp<> = nameof_s2exp
implement totype_s2explst<> = nameof_s2explst
implement totype_s2expopt<> = nameof_s2expopt
implement totype_s2hnf<> = nameof_s2hnf
implement totype_labs2exp<> = nameof_labs2exp
implement totype_labs2explst<> = nameof_labs2explst
implement totype_abstdf2<> = nameof_abstdf2
implement totype_effs2expopt<> = nameof_effs2expopt
implement totype_s2itm<> = nameof_s2itm
//
implement totype_tag_sort2<> = nameof_tag_sort2
implement totype_tag_t2bas<> = nameof_tag_t2bas
implement totype_tag_tyrec<> = nameof_tag_tyrec
implement totype_tag_s2txt<> = nameof_tag_s2txt
implement totype_tag_s2exp_node<> = nameof_tag_s2exp_node
implement totype_s2exp_node<> = nameof_s2exp_node
implement totype_tag_s2hnf<> = nameof_tag_s2hnf
implement totype_tag_labs2exp<> = nameof_tag_labs2exp
implement totype_tag_abstdf2<> = nameof_tag_abstdf2
implement totype_tag_effs2expopt<> = nameof_tag_effs2expopt
implement totype_tag_s2itm<> = nameof_tag_s2itm
implement totype_fmodenv<> = nameof_fmodenv
implement totype_fmodenvopt<> = nameof_fmodenvopt
implement totype_s2xtv<> = nameof_s2xtv

end
