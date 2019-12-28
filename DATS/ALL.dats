(*
#include "./../../HATS/libxatsopt.hats"
#include "./../../HATS/libxnameof.hats"
#include "./../../HATS/libxargsof.hats"
*)

#include "./../HATS/x.hats"

#staload "{$x}/SATS/basics.sats"
#staload "{$x}/SATS/lexing.sats"
#staload "{$x}/SATS/locinfo.sats"
#staload "{$x}/SATS/filpath.sats"
#staload "{$x}/SATS/symbol.sats"
#staload "{$x}/SATS/label0.sats"
#staload "{$x}/SATS/stamp0.sats"

val dummy_loc = the_location_dummy
val dummy_dirpath = the_dirpath_dummy
val dummy_filpath = the_filpath_dummy
val dummy_symbol = EQGT_symbol

val dummy_label_int = label_make_int(0)
val dummy_label_sym = label_make_sym(dummy_symbol)

val dummy_label = dummy_label_sym

val dummy_stamper = stamper_new()
val dummy_stamp = stamper_getinc(dummy_stamper)

(*
datatype
dctkind =
| DCKfun of ()
| DCKval of ()
| DCKpraxi of ()
| DCKprfun of ()
| DCKprval of ()
| DCKcastfn of ()
*)


val dctkinds = $list{dctkind}
(
DCKfun(),
DCKval(),
DCKpraxi(),
DCKprfun(),
DCKprval(),
DCKcastfn()
)

val dummy_dctkind = dctkinds[0]

(*
datatype
valkind =
| VLKval
| VLKvalp
| VLKvaln
(*
| VLKmcval // mcval: for model-checking
*)
| VLKprval
// end of [valkind]
*)

val valkinds = $list{valkind}
(
VLKval(),
VLKvalp(),
VLKvaln(),
//VLKmcval(),
VLKprval()
)

val dummy_valkind = valkinds[0]
(*
datatype
funkind =
| FNKfn0 // nonrec fun
| FNKfnx // tailrec fun
| FNKfn1 // recursive fun
| FNKfun // recursive fun
| FNKprfn0 // nonrec proof fun
| FNKprfn1 // recursive proof fun
| FNKprfun // recursive proof fun
| FNKpraxi // proof axiom
| FNKcastfn // casting fun
*)

val funkinds = $list{funkind}
(
FNKfn0(),
FNKfnx(),
FNKfn1(),
FNKfun(),
FNKprfn0(),
FNKprfn1(),
FNKprfun(),
FNKpraxi(),
FNKcastfn()
)

val dummy_funkind = funkinds[0]
(*
datatype
impkind =
| IMPgen // for non-proof case
| IMPprf // proof implementation
| IMPval // value implementation
| IMPfun // function implementation
| IMPtmp // template implementation
*)

val impkinds = $list{impkind}
(
IMPgen(),
IMPprf(),
IMPval(),
IMPfun(),
IMPtmp()
)

val dummy_impkind = impkinds[0]
(*
datatype
funclo2 =
| FC2fun of ((*fun*))
| FC2clo of int(*knd*) // closure: knd=1/0/~1: ptr/clo/ref
*)

val funclo2s = $list{funclo2}
(
FC2fun(),
FC2clo(0)
)

val dummy_funclo2 = funclo2s[0]
(*
dctkinds
valkinds
funkinds
impkinds
funclo2s
*)

(*
datatype
tnode =
  | T_EOF of ()
  | T_ERR of ()
  | T_EOL of ()
  | T_BLANK of (string)
  | T_CLNLT of (string)
  | T_DOTLT of (string)
  | T_IDENT_alp of (string)
  | T_IDENT_sym of (string)
  | T_IDENT_srp of (string)
  | T_IDENT_dlr of (string)
  | T_IDENT_qual of (string)
  | T_INT1 of (string)
  | T_INT2 of (int(*base*), string(*rep*))
  | T_INT3 of (int(*base*), string(*rep*), int(*suffix*))
  | T_FLOAT1 of (string(*rep*))
  | T_FLOAT2 of (int(*base*), string(*rep*))
  | T_FLOAT3 of (int(*base*), string(*rep*), int(*suffix*))
(*
  | T_CHAR of (int) // ascii
*)
  | T_CHAR_nil of (string)
  | T_CHAR_char of (string)
  | T_CHAR_slash of (string)
  | T_STRING_closed of (string)
  | T_STRING_unclsd of (string)
(*
  | {n:int} T_CDATA of (arrayref(char, n), size_t(n))
*)
  | T_SPECHAR of (int)
  | T_COMMENT_line of (string(*init*), string)
  | T_COMMENT_rest of (string(*init*), string)
  | T_COMMENT_cblock of (int(*level*), string)
  | T_COMMENT_mlblock of (int(*level*), string)
  | T_AT of ()
(*
  | T_BANG of ()
*)
  | T_BAR of ()
  | T_CLN of ()
  | T_DOT of ()
  | T_EQ of ()
  | T_LT of ()
  | T_GT of ()
  | T_DLR of ()
  | T_SRP of ()
  | T_EQLT of ()
  | T_EQGT of ()
  | T_LTGT of ()
  | T_GTLT of ()
  | T_MSLT of ()
(*
  | T_MSGT of ()
  | T_MSLTGT of ()
*)
  | T_GTDOT of ()
  | T_COMMA of ()
  | T_SMCLN of ()
  | T_BSLASH of ()
  | T_LPAREN of ()
  | T_RPAREN of ()
  | T_LBRACE of ()
  | T_RBRACE of ()
  | T_EXISTS of (int)
  | T_LBRACK of ()
  | T_RBRACK of ()
  | T_TUPLE of (int)
  | T_RECORD of (int)
(*
  | T_STRUCT of (int)
*)
  | T_AS of ()
  | T_OF of ()
  | T_OP of ()
  | T_OP_par of ()
  | T_OP_sym of (string)
  | T_IN of ()
  | T_AND of ()
  | T_END of ()
  | T_IF of ()
  | T_SIF of ()
  | T_THEN of ()
  | T_ELSE of ()
  | T_WHEN of ()
  | T_WITH of ()
  | T_CASE of (int)
  | T_SCASE of ()
  | T_ENDIF of ()
  | T_ENDSIF of ()
  | T_ENDCASE of ()
  | T_ENDSCASE of ()
  | T_LAM of (int)
  | T_FIX of (int)
  | T_LET of ()
  | T_WHERE of ()
  | T_LOCAL of ()
  | T_ENDLAM of ()
  | T_ENDLET of ()
  | T_ENDWHERE of ()
  | T_ENDLOCAL of ()
  | T_FUN of (funkind)
  | T_VAL of (valkind)
  | T_VAR of ((*void*))
  | T_IMPLMNT of (impkind)
  | T_ABSSORT of ()
  | T_SORTDEF of ()
  | T_SEXPDEF of (int)
  | T_ABSTYPE of (int)
  | T_ABSIMPL of ()
  | T_ABSOPEN of ()
  | T_DATASORT of ()
  | T_DATATYPE of (int)
  | T_WITHTYPE of (int)
  | T_SRP_NONFIX of ()
  | T_SRP_FIXITY of (int)
  | T_SRP_STACST of ()
  | T_SRP_STATIC of ()
  | T_SRP_EXTERN of ()
  | T_SRP_DEFINE of ()
  | T_SRP_MACDEF of ()
  | T_SRP_INCLUDE of ()
  | T_SRP_STALOAD of ()
  | T_SRP_DYNLOAD of ()
  | T_SRP_SYMLOAD of ()
*)

val tnodes = $list{tnode}
(
T_EOF(),
T_ERR(),
T_EOL(),
T_BLANK(""),
T_CLNLT(""),
T_DOTLT(""),
T_IDENT_alp(""),
T_IDENT_sym(""),
T_IDENT_srp(""),
T_IDENT_dlr(""),
T_IDENT_qual(""),
T_INT1(""),
T_INT2(0(*base*), ""(*rep*)),
T_INT3(0(*base*), ""(*rep*), 0(*suffix*)),
T_FLOAT1(""(*rep*)),
T_FLOAT2(0(*base*), ""(*rep*)),
T_FLOAT3(0(*base*), ""(*rep*), 0(*suffix*)),
// T_CHAR(0) // ascii
T_CHAR_nil(""),
T_CHAR_char(""),
T_CHAR_slash(""),
T_STRING_closed(""),
T_STRING_unclsd(""),
//  {n:int} T_CDATA of (arrayref(char, n), size_t(n))
T_SPECHAR(0),
T_COMMENT_line(""(*init*), ""),
T_COMMENT_rest(""(*init*), ""),
T_COMMENT_cblock(0(*level*), ""),
T_COMMENT_mlblock(0(*level*), ""),
T_AT(),
// T_BANG()
T_BAR(),
T_CLN(),
T_DOT(),
T_EQ(),
T_LT(),
T_GT(),
T_DLR(),
T_SRP(),
T_EQLT(),
T_EQGT(),
T_LTGT(),
T_GTLT(),
T_MSLT(),
(*
T_MSGT(),
T_MSLTGT(),
*)
T_GTDOT(),
T_COMMA(),
T_SMCLN(),
T_BSLASH(),
T_LPAREN(),
T_RPAREN(),
T_LBRACE(),
T_RBRACE(),
T_EXISTS(0),
T_LBRACK(),
T_RBRACK(),
T_TUPLE(0),
T_RECORD(0),
(*
T_STRUCT(0),
*)
T_AS(),
T_OF(),
T_OP(),
T_OP_par(),
T_OP_sym(""),
T_IN(),
T_AND(),
T_END(),
T_IF(),
T_SIF(),
T_THEN(),
T_ELSE(),
T_WHEN(),
T_WITH(),
T_CASE(0),
T_SCASE(),
T_ENDIF(),
T_ENDSIF(),
T_ENDCASE(),
T_ENDSCASE(),
T_LAM(0),
T_FIX(0),
T_LET(),
T_WHERE(),
T_LOCAL(),
T_ENDLAM(),
T_ENDLET(),
T_ENDWHERE(),
T_ENDLOCAL(),
T_FUN(funkinds[0](* funkind *)),
T_VAL(valkinds[0](* valkind *)),
T_VAR(),
T_IMPLMNT(impkinds[0](* impkind *)),
T_ABSSORT(),
T_SORTDEF(),
T_SEXPDEF(0),
T_ABSTYPE(0),
T_ABSIMPL(),
T_ABSOPEN(),
T_DATASORT(),
T_DATATYPE(0),
T_WITHTYPE(0),
T_SRP_NONFIX(),
T_SRP_FIXITY(0),
T_SRP_STACST(),
T_SRP_STATIC(),
T_SRP_EXTERN(),
T_SRP_DEFINE(),
T_SRP_MACDEF(),
T_SRP_INCLUDE(),
T_SRP_STALOAD(),
T_SRP_DYNLOAD(),
T_SRP_SYMLOAD()
)

val dummy_token = token_make_node(dummy_loc, tnodes[0])
val dummy_tokenopt = None{token}()


(* ****** ****** *)
// staexp0

#staload "{$x}/SATS/staexp0.sats"



(*
datatype
t0int_node =
  | T0INTnone of token
  | T0INTsome of token
*)
val t0ints = $list{t0int_node}
(
T0INTnone(dummy_token),
T0INTsome(dummy_token)
)

val dummy_t0int = t0int_some(dummy_token)

(*
datatype
t0chr_node =
  | T0CHRnone of token
  | T0CHRsome of token
*)

val t0chrs = $list{t0chr_node}
(
T0CHRnone(dummy_token),
T0CHRsome(dummy_token)
)

val dummy_t0chr = t0chr_some(dummy_token)

(*
datatype
t0flt_node =
  | T0FLTnone of token
  | T0FLTsome of token
*)
val t0flts = $list{t0flt_node}
(
T0FLTnone(dummy_token),
T0FLTsome(dummy_token)
)

val dummy_t0flt = t0flt_some(dummy_token)

(*
datatype
t0str_node =
  | T0STRnone of token
  | T0STRsome of token
*)
val t0strs = $list{t0str_node}
(
T0STRnone(dummy_token),
T0STRsome(dummy_token)
)

val dummy_t0str = t0str_some(dummy_token)

//
(* ****** ****** *)
//
(*
datatype
i0dnt_node =
  | I0DNTnone of token
  | I0DNTsome of token
*)
val i0dnts = $list{i0dnt_node}
(
I0DNTnone(dummy_token),
I0DNTsome(dummy_token)
)

val dummy_i0dnt = i0dnt_some(dummy_token)
val dummy_i0dntlst = list_nil{i0dnt}()

val dummy_g0eid = dummy_i0dnt
val dummy_s0tid = dummy_i0dnt
val dummy_s0eid = dummy_i0dnt
val dummy_d0pid = dummy_i0dnt
val dummy_d0eid = dummy_i0dnt

(*
datatype
l0abl_node =
  | L0ABLsome of label // valid
  | L0ABLnone of (token) // invalid
*)

val l0abls = $list{l0abl_node}
(
L0ABLsome(dummy_label),
L0ABLnone(dummy_token)
)

val dummy_l0abl = l0abl_make_none(dummy_token)

(*
datatype
s0ymb_node =
| S0YMBi0dnt of (i0dnt)
| S0YMBdtlab of (token, l0abl)
| S0YMBbrack of (token, token)
*)

val s0ymbs = $list{s0ymb_node}
(
S0YMBi0dnt(dummy_i0dnt),
S0YMBdtlab(dummy_token, dummy_l0abl),
S0YMBbrack(dummy_token, dummy_token)
)

val dummy_s0ymb = s0ymb_make_node(dummy_loc, s0ymbs[0])


(*
datatype
sq0eid =
| SQ0EIDnone of (s0eid)
| SQ0EIDsome of (token, s0eid)
*)
val sq0eids = $list{sq0eid}
(
SQ0EIDnone(dummy_s0eid),
SQ0EIDsome(dummy_token, dummy_s0eid)
)

val dummy_sq0eid = sq0eids[0]

(*
datatype
dq0eid =
| DQ0EIDnone of (d0eid)
| DQ0EIDsome of (token, d0eid)
*)

val dq0eids = $list{dq0eid}
(
DQ0EIDnone(dummy_d0eid),
DQ0EIDsome(dummy_token, dummy_d0eid)
)

val dummy_dq0eid = dq0eids[0]

(*
datatype
g0exp_node =
| G0Eid of (g0eid)
| G0Eint of (t0int)
| G0Eapps of g0explst
| G0Elist of (token, g0explst, token) (*temp*)
| G0Enone of (token) // HX: for error
*)

val dummy_g0explst = list_nil{g0exp}()

val g0exps = $list{g0exp_node}
(
G0Eid(dummy_g0eid),
G0Eint(dummy_t0int),
G0Eapps(dummy_g0explst),
G0Elist(dummy_token, dummy_g0explst, dummy_token),
G0Enone(dummy_token)
)

val dummy_g0exp = g0exp_make_node(dummy_loc, g0exps[0])

//

val dummy_g0arg = dummy_g0eid
val dummy_g0arglst = list_nil{g0arg}()
(*
datatype
g0marg_node =
| G0MARGnone of (token)
| G0MARGsarg of
  (token(*LP*), g0arglst, token(*RP*))
| G0MARGdarg of
  (token(*LP*), g0arglst, token(*RP*))
*)

val g0margs = $list{g0marg_node}
(
G0MARGnone(dummy_token),
G0MARGsarg(dummy_token(*LP*), dummy_g0arglst, dummy_token(*RP*)),
G0MARGdarg(dummy_token(*LP*), dummy_g0arglst, dummy_token(*RP*))
)

val dummy_g0marg = g0marg_make_node(dummy_loc, g0margs[0])

(*
datatype
sort0_node =
| S0Tid of (s0tid)
| S0Tint of (t0int)
| S0Tapps of (sort0lst)
| S0Tlist of (token, sort0lst, token)
| S0Tqual of (token, sort0)
// | S0Ttype of int
| S0Tnone of (token)
*)

val dummy_sort0lst = list_nil{sort0}()

val dummy_sort0 = sort0_make_node(dummy_loc, S0Tid(dummy_s0tid))

val sort0s = $list{sort0_node}
(
S0Tid(dummy_s0tid),
S0Tint(dummy_t0int),
S0Tapps(dummy_sort0lst),
S0Tlist(dummy_token, dummy_sort0lst, dummy_token),
S0Tqual(dummy_token, dummy_sort0),
// S0Ttype(int),
S0Tnone(dummy_token)
)

val dummy_sort0opt = None{sort0}()

(*
datatype
s0rtcon_node =
| S0RTCON of (s0eid, sort0opt)
*)

val s0rtcons = $list{s0rtcon_node}
(
S0RTCON(dummy_s0eid, dummy_sort0opt)
)

val dummy_s0rtcon = s0rtcon_make_node(dummy_loc, s0rtcons[0])
val dummy_s0rtconlst = list_nil{s0rtcon}()

(*
datatype
d0tsort_node =
| D0TSORT of (s0tid, token, s0rtconlst)
*)

val d0tsorts = $list{d0tsort_node}
(
D0TSORT(dummy_s0tid, dummy_token, dummy_s0rtconlst)
)

val dummy_d0tsort = d0tsort_make_node(dummy_loc, d0tsorts[0])
val dummy_d0tsortlst = list_nil{d0tsort}()

(*
datatype
s0rtdef_node =
| S0RTDEFsort of sort0
| S0RTDEFsbst of
  (token, s0arg, token, s0explst, token)
*)

val dummy_s0explst = list_nil{s0exp}

val dummy_s0arg = s0arg_make_node(dummy_loc, S0ARGnone(dummy_token))

val s0rtdefs = $list{s0rtdef_node}
(
S0RTDEFsort(dummy_sort0),
S0RTDEFsbst(dummy_token, dummy_s0arg, dummy_token, dummy_s0explst, dummy_token)
)

val dummy_s0rtdef = s0rtdef_make_node(dummy_loc, s0rtdefs[0])


(*
datatype
s0arg_node =
| S0ARGnone of (token)
| S0ARGsome of (s0eid, sort0opt)
*)
val dummy_s0arglst = list_nil{s0arg}()

val s0args = $list{s0arg_node}
(
S0ARGnone(dummy_token),
S0ARGsome(dummy_s0eid, dummy_sort0opt)
)

(*
datatype
s0marg_node =
| S0MARGnone of (token)
| S0MARGsing of (s0eid)
| S0MARGlist of (token(*LP*), s0arglst, token(*RP*))
*)

val s0margs = $list{s0marg_node}
(
S0MARGnone(dummy_token),
S0MARGsing(dummy_s0eid),
S0MARGlist(dummy_token, dummy_s0arglst, dummy_token)
)

val dummy_s0marg = s0marg_make_node(dummy_loc, s0margs[0])
val dummy_s0marglst = list_nil{s0marg}()


(*
datatype
t0arg_node =
(*
  | T0ARGnone of token
*)
  | T0ARGsome of (sort0, tokenopt)
*)

val t0args = $list{t0arg_node}
(
// T0ARGnone(dummy_token)
T0ARGsome(dummy_sort0, dummy_tokenopt)
)

val dummy_t0arg = t0arg_make_node(dummy_loc, t0args[0])
val dummy_t0arglst = list_nil{t0arg}()

(*
datatype
t0marg_node =
| T0MARGnone of (token)
| T0MARGlist of (token, t0arglst, token)
*)



val t0margs = $list{t0marg_node}
(
T0MARGnone(dummy_token),
T0MARGlist(dummy_token, dummy_t0arglst, dummy_token)
)

val dummy_t0marg = t0marg_make_node(dummy_loc, t0margs[0])
val dummy_t0marglst = list_nil{t0marg}()

//

val dummy_s0exp = s0exp_make_node(dummy_loc, S0Eid(dummy_s0eid))

(*
datatype
s0qua_node =
| S0QUAprop of (s0exp)
| S0QUAvars of (i0dntlst, sort0opt)
*)

val s0quas = $list{s0qua_node}
(
S0QUAprop(dummy_s0exp),
S0QUAvars(dummy_i0dntlst, dummy_sort0opt)
)

val dummy_s0qua = s0qua_make_node(dummy_loc, s0quas[0])
val dummy_s0qualst = list_nil{s0qua}()

(*
datatype
s0uni_node =
| S0UNInone of (token)
| S0UNIsome of (token, s0qualst, token)
*)

val s0unis = $list{s0uni_node}
(
S0UNInone(dummy_token),
S0UNIsome(dummy_token, dummy_s0qualst, dummy_token)
)

val dummy_s0uni = s0uni_make_node(dummy_loc, s0unis[0])
val dummy_s0unilst = list_nil{s0uni}()

//


(*
datatype
s0exp_node =
| S0Eid of (s0eid)
| S0Eop1 of (token) // op_symid
| S0Eop2 of (token, s0eid, token) // op(...)
| S0Eint of (t0int)
| S0Echr of (t0chr)
| S0Eflt of (t0flt)
| S0Estr of (t0str)
| S0Eapps of s0explst
| S0Eimp of (token, s0explst, token)
| S0Eparen of (token, s0explst, s0exp_RPAREN)
| S0Etuple of (token, tokenopt, s0explst, s0exp_RPAREN)
| S0Erecord of (token, tokenopt, labs0explst, labs0exp_RBRACE)
| S0Eforall of (token, s0qualst, token) // universal
| S0Eexists of (token, s0qualst, token) // existential
| S0Elam of (token, s0marglst, sort0opt, token, s0exp, tokenopt)
| S0Eanno of (s0exp, sort0) // sort annotation
| S0Equal of (token, s0exp) // qualified staexp
| S0Enone of (token) // HX-2018-07-08: indicating error
//
and
s0exp_RPAREN =
| s0exp_RPAREN_cons0 of token
| s0exp_RPAREN_cons1 of (token, s0explst, token)
//
and
labs0exp_RBRACE =
| labs0exp_RBRACE_cons0 of token
| labs0exp_RBRACE_cons1 of (token, labs0explst, token)
*)


val dummy_s0explst = list_nil{s0exp}()
val dummy_s0expopt = None{s0exp}()
val dummy_labs0explst = list_nil{labs0exp}()
val dummy_s0exp_RPAREN = s0exp_RPAREN_cons0(dummy_token)
val dummy_labs0exp_RBRACE = labs0exp_RBRACE_cons0(dummy_token)


val s0exps = $list{s0exp_node}
(
S0Eid(dummy_s0eid),
S0Eop1(dummy_token),
S0Eop2(dummy_token, dummy_s0eid, dummy_token),
S0Eint(dummy_t0int),
S0Echr(dummy_t0chr),
S0Eflt(dummy_t0flt),
S0Estr(dummy_t0str),
S0Eapps(dummy_s0explst),
S0Eimp(dummy_token, dummy_s0explst, dummy_token),
S0Eparen(dummy_token, dummy_s0explst, dummy_s0exp_RPAREN),
S0Etuple(dummy_token, dummy_tokenopt, dummy_s0explst, dummy_s0exp_RPAREN),
S0Erecord(dummy_token, dummy_tokenopt, dummy_labs0explst, dummy_labs0exp_RBRACE),
S0Eforall(dummy_token, dummy_s0qualst, dummy_token),
S0Eexists(dummy_token, dummy_s0qualst, dummy_token),
S0Elam(dummy_token, dummy_s0marglst, dummy_sort0opt, dummy_token, dummy_s0exp, dummy_tokenopt),
S0Eanno(dummy_s0exp, dummy_sort0),
S0Equal(dummy_token, dummy_s0exp),
S0Enone(dummy_token)
)

val s0exp_RPARENs = $list{s0exp_RPAREN}
(
s0exp_RPAREN_cons0(dummy_token),
s0exp_RPAREN_cons1(dummy_token, dummy_s0explst, dummy_token)
)

val labs0exp_RBRACEs = $list{labs0exp_RBRACE}
(
labs0exp_RBRACE_cons0(dummy_token),
labs0exp_RBRACE_cons1(dummy_token, dummy_labs0explst, dummy_token)
)

val dummy_s0exp_RPAREN = s0exp_RPARENs[0]
val dummy_labs0exp_RBRACE = labs0exp_RBRACEs[0]

(*
datatype
effs0expopt =
| EFFS0EXPnone of ()
| EFFS0EXPsome of (s0exp)
*)

val effs0expopts = $list{effs0expopt}
(
EFFS0EXPnone(),
EFFS0EXPsome(dummy_s0exp)
)

val dummy_effs0expopt = effs0expopts[0] : effs0expopt

(*
datatype
d0atcon_node =
| D0ATCON of (s0unilst, d0eid(*nm*), s0explst, s0expopt)
*)

val d0atcons = $list{d0atcon_node}
(
D0ATCON(dummy_s0unilst, dummy_d0eid, dummy_s0explst, dummy_s0expopt)
)

val dummy_d0atcon = d0atcon_make_node(dummy_loc, d0atcons[0])
val dummy_d0atconlst = list_nil{d0atcon}()

(*
datatype
d0atype_node =
| D0ATYPE of (d0eid, t0marglst, sort0opt(*res*), token, d0atconlst)
*)

val d0atypes = $list{d0atype_node}
(
D0ATYPE(dummy_d0eid, dummy_t0marglst, dummy_sort0opt, dummy_token, dummy_d0atconlst)
)

val dummy_d0atype = d0atype_make_node(dummy_loc, d0atypes[0])
val dummy_d0atypelst = list_nil{d0atype}()

(* ****** ****** *)

(*
dummy_dctkind
dctkinds

dummy_valkind
valkinds

dummy_funkind
funkinds

dummy_impkind
impkinds

dummy_funclo2
funclo2s


dummy_token
dummy_tokenopt
tnodes
*)


(*
dummy_t0int
t0ints

dummy_t0chr
t0chrs

dummy_t0flt
t0flts

dummy_t0str
t0strs


dummy_i0dnt
dummy_i0dntlst
i0dnts

dummy_g0eid
dummy_s0tid
dummy_s0eid
dummy_d0pid
dummy_d0eid

dummy_l0abl
l0abls


dummy_s0ymb
s0ymbs


dummy_sq0eid
sq0eids


dummy_dq0eid
dq0eids


dummy_g0exp
dummy_g0explst
g0exps


dummy_g0arg
dummy_g0arglst

dummy_g0marg
g0margs


dummy_sort0
dummy_sort0lst
dummy_sort0opt
sort0s


dummy_s0rtcon
dummy_s0rtconlst
s0rtcons

dummy_d0tsort
dummy_d0tsortlst
d0tsorts

dummy_s0rtdef
s0rtdefs


dummy_s0arg
dummy_s0arglst
s0args

dummy_s0marg
dummy_s0marglst
s0margs

dummy_t0arg
dummy_t0arglst
t0args

dummy_t0marg
dummy_t0marglst
t0margs

dummy_s0qua
dummy_s0qualst
s0quas

dummy_s0uni
dummy_s0unilst
s0unis

dummy_s0exp
dummy_s0explst
dummy_s0expopt
s0exps

dummy_s0exp_RPAREN
s0exp_RPARENs

dummy_labs0exp_RBRACE
labs0exp_RBRACEs

dummy_effs0expopt
effs0expopts

dummy_d0atcon
dummy_d0atconlst
d0atcons

d0atypes
dummy_d0atype
*)
