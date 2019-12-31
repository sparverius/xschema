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

val dummy_int = 0
val dummy_char = '?'
val dummy_string = "dummy"

val dummy_loc = the_location_dummy : location
val dummy_dirpath = the_dirpath_dummy
val dummy_filpath = the_filpath_dummy
val dummy_symbol = EQGT_symbol : symbol

val dummy_sym_t = dummy_symbol
val dummy_loc_t = dummy_loc

val dummy_label_int = label_make_int(0)
val dummy_label_sym = label_make_sym(dummy_symbol)

val labels = $list{label}
(
dummy_label_int,
dummy_label_sym
)

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
val dummy_tokenlst = list_nil{token}()

(*
datatype TOKEN =
  | TOKEN of (loc_t, tnode)

val tokens_no_node = $list{TOKEN}
*)




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
  val
  dummy_t0intopt = None{t0int}()

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
val dummy_g0marglst = list_nil{g0marg}()

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

val dummy_labs0exp = SL0ABLED(dummy_l0abl, dummy_token, dummy_s0exp) : labs0exp


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

dummy_d0atype
d0atypes
*)


(* ****** ****** *)


#staload "{$x}/SATS/dynexp0.sats"

(*
datatype
dl0abeled
  (a:type) =
  DL0ABELED of (l0abl, token, a)
*)

(*
typedef d0pat = d0pat_tbox
typedef d0patlst = List0(d0pat)
typedef d0patopt = Option(d0pat)
typedef labd0pat = dl0abeled(d0pat)
typedef labd0patlst = List0(labd0pat)
*)


(*
typedef d0exp = d0exp_tbox
typedef d0explst = List0(d0exp)
typedef d0expopt = Option(d0exp)
typedef labd0exp = dl0abeled(d0exp)
typedef labd0explst = List0(labd0exp)
*)


(*
typedef d0gua = d0gua_tbox
typedef d0gualst = List0(d0gua)
//
abstbox d0gpat_tbox = ptr
typedef d0gpat = d0gpat_tbox
//
abstbox d0clau_tbox = ptr
typedef d0clau = d0clau_tbox
typedef d0claulst = List0(d0clau)
*)


val dummy_d0explst = list_nil{d0exp}()
val dummy_d0expopt = None{d0exp}()

val dummy_labd0explst = list_nil{labd0exp}()
val dummy_d0claulst = list_nil{d0clau}()

val dummy_d0gualst = list_nil{d0gua}()
val dummy_d0patlst = list_nil{d0pat}()


  //

(*
typedef d0ecl = d0ecl_tbox
typedef d0eclist = List0(d0ecl)
typedef d0eclopt = Option(d0ecl)
*)

  //


(*
typedef q0arg = q0arg_tbox
typedef q0arglst = List0(q0arg)
*)

(*
datatype
q0arg_node =
(*
| Q0ARGnone of token
*)
| Q0ARGsome of (i0dnt, sort0opt)
*)


val q0args = $list{q0arg_node}
(
Q0ARGsome(dummy_i0dnt, dummy_sort0opt)
)

  val
  dummy_q0arglst = list_nil{q0arg}()

  val
  dummy_q0arg = q0arg_make_node(dummy_loc, q0args[0])

  //
(*
datatype
sq0arg_node =
| SQ0ARGnone of token
| SQ0ARGsome of (token, q0arglst, token)
* )
*)


val sq0args = $list{sq0arg_node}
(
SQ0ARGnone(dummy_token),
SQ0ARGsome(dummy_token, dummy_q0arglst, dummy_token)
)

  val
  dummy_sq0arg = sq0arg_make_node(dummy_loc, sq0args[0])
  val
  dummy_sq0arglst = list_nil{sq0arg}()

  //

(*
datatype
tq0arg_node =
| TQ0ARGnone of token
| TQ0ARGsome of (token(*'<'*), q0arglst, token(*'>'*))
))
*)

val tq0args = $list{tq0arg_node}
(
TQ0ARGnone(dummy_token),
TQ0ARGsome(dummy_token, dummy_q0arglst, dummy_token)
)

  val
  dummy_tq0arg = tq0arg_make_node(dummy_loc, tq0args[0])
  val
  dummy_tq0arglst = list_nil{tq0arg}()

  //

(*
datatype
ti0arg_node =
  | TI0ARGnone of token
  | TI0ARGsome of (token(*'<'*), s0explst, token(*'>'*))
*)

val ti0args = $list{ti0arg_node}
(
TI0ARGnone(dummy_token),
TI0ARGsome(dummy_token(*'<'*), dummy_s0explst, dummy_token(*'>'*))
)

  val
  dummy_ti0arg = ti0arg_make_node(dummy_loc, ti0args[0])
  val
  dummy_ti0arglst = list_nil{ti0arg}()

  //

val
dummy_a0typlst = list_nil{a0typ}()
val
dummy_a0typopt = None{a0typ}()
val
dummy_a0typlstopt = None{a0typlst}()

(*
datatype
a0typ_node =
(*
  | A0TYPnone of token
  )
*)
  | A0TYPsome of (s0exp, tokenopt)
)
*)

val a0typs = $list{a0typ_node}
(
A0TYPsome(dummy_s0exp, dummy_tokenopt)
)

  val
  dummy_a0typ = a0typ_make_node(dummy_loc, a0typs[0])

  //

(*
datatype
d0arg_node =
| D0ARGnone of (token)
| D0ARGsome_sta of (token, s0qualst, token)
| D0ARGsome_dyn1 of (s0eid)
| D0ARGsome_dyn2 of (token, a0typlst, a0typlstopt, token)
))
*)

val
dummy_d0arglst = list_nil{d0arg}()

val d0args = $list{d0arg_node}
(
D0ARGnone(dummy_token),
D0ARGsome_sta(dummy_token, dummy_s0qualst, dummy_token),
D0ARGsome_dyn1(dummy_s0eid),
D0ARGsome_dyn2(dummy_token, dummy_a0typlst, dummy_a0typlstopt, dummy_token)
)

  val
  dummy_d0arg = d0arg_make_node(dummy_loc, d0args[0])

  //


(*
datatype
f0arg_node =
| F0ARGnone of (token)
| F0ARGsome_dyn of (d0pat)
| F0ARGsome_sta of (token, s0qualst, token)
| F0ARGsome_met of (token, s0explst, token)
)))
*)

  val
  dummy_d0pat = d0pat_make_node(dummy_loc, D0Pid(dummy_d0pid))

val
dummy_f0arglst = list_nil{f0arg}()

val f0args = $list{f0arg_node}
(
F0ARGnone(dummy_token),
F0ARGsome_dyn(dummy_d0pat),
F0ARGsome_sta(dummy_token, dummy_s0qualst, dummy_token),
F0ARGsome_met(dummy_token, dummy_s0explst, dummy_token)
)


  val
  dummy_f0arg = f0arg_make_node(dummy_loc_t, f0args[0])

  //

(*
datatype
d0pat_node =
| D0Pid of (d0pid)
| D0Pint of (t0int)
| D0Pchr of (t0chr)
| D0Pflt of (t0flt)
| D0Pstr of (t0str)
| D0Papps of d0patlst
| D0Psqarg of (token, s0arglst, token)
| D0Pparen of (token, d0patlst, d0pat_RPAREN)
| D0Ptuple of (token, tokenopt, d0patlst, d0pat_RPAREN)
| D0Precord of (token, tokenopt, labd0patlst, labd0pat_RBRACE)
| D0Panno of (d0pat, s0exp)
| D0Pqual of (token, d0pat)
| D0Pnone of (token)
*)

(*
and
d0pat_RPAREN =
| d0pat_RPAREN_cons0 of (token)
| d0pat_RPAREN_cons1 of (token, d0patlst, token)
*)

(*
and
labd0pat_RBRACE =
| labd0pat_RBRACE_cons0 of token
| labd0pat_RBRACE_cons1 of (token, labd0patlst, token)
*)

val
dummy_labd0patlst = list_nil{labd0pat}()
val
dummy_d0patlst = list_nil{d0pat}()


val labd0pat_RBRACEs = $list{labd0pat_RBRACE}
(
labd0pat_RBRACE_cons0(dummy_token),
labd0pat_RBRACE_cons1(dummy_token, dummy_labd0patlst, dummy_token)
)

  val
  dummy_labd0pat_RBRACE = labd0pat_RBRACEs[0]

val d0pat_RPARENs = $list{d0pat_RPAREN}
(
d0pat_RPAREN_cons0(dummy_token),
d0pat_RPAREN_cons1(dummy_token, dummy_d0patlst, dummy_token)
)

  val
  dummy_d0pat_RPAREN = d0pat_RPARENs[0]

  val
  dummy_d0pat = d0pat_make_node(dummy_loc, D0Pid(dummy_d0pid))

val d0pats = $list{d0pat_node}
(
D0Pid(dummy_d0pid),
D0Pint(dummy_t0int),
D0Pchr(dummy_t0chr),
D0Pflt(dummy_t0flt),
D0Pstr(dummy_t0str),
D0Papps(dummy_d0patlst),
D0Psqarg(dummy_token, dummy_s0arglst, dummy_token),
D0Pparen(dummy_token, dummy_d0patlst, dummy_d0pat_RPAREN),
D0Ptuple(dummy_token, dummy_tokenopt, dummy_d0patlst, dummy_d0pat_RPAREN),
D0Precord(dummy_token, dummy_tokenopt, dummy_labd0patlst, dummy_labd0pat_RBRACE),
D0Panno(dummy_d0pat, dummy_s0exp),
D0Pqual(dummy_token, dummy_d0pat),
D0Pnone(dummy_token)
)

  //

  val
  dummy_labd0pat = DL0ABELED(dummy_l0abl, dummy_token, dummy_d0pat)

val dummy_d0eclist = list_nil{d0ecl}()

val
dummy_labd0explst = list_nil{labd0exp}()
val
dummy_d0explst = list_nil{d0exp}()

  val
  dummy_d0exp = d0exp_make_node(dummy_loc, D0Eid(dummy_d0eid))
  val
  dummy_labd0exp = DL0ABELED(dummy_l0abl, dummy_token, dummy_d0exp)


val d0exp_RPARENs = $list{d0exp_RPAREN}
(
d0exp_RPAREN_cons0(dummy_token),
d0exp_RPAREN_cons1(dummy_token, dummy_d0explst, dummy_token),
d0exp_RPAREN_cons2(dummy_token, dummy_d0explst, dummy_token)
)

  val
  dummy_d0exp_RPAREN = d0exp_RPARENs[0]

val labd0exp_RBRACEs = $list{labd0exp_RBRACE}
(
labd0exp_RBRACE_cons0(dummy_token),
labd0exp_RBRACE_cons1(dummy_token, dummy_labd0explst, dummy_token)
)

  val
  dummy_labd0exp_RBRACE = labd0exp_RBRACEs[0]


val d0exp_THENs = $list{d0exp_THEN}
(
d0exp_THEN(dummy_token, dummy_d0exp)
)
  val
  dummy_d0exp_THEN = d0exp_THENs[0]


val d0exp_ELSEs = $list{d0exp_ELSE}
(
d0exp_ELSEnone(),
d0exp_ELSEsome(dummy_token, dummy_d0exp)
)
  val
  dummy_d0exp_ELSE = d0exp_ELSEs[0]


val endwheres = $list{endwhere}
(
endwhere_cons1(dummy_token),
endwhere_cons2(dummy_token, dummy_tokenopt)
)
  val
  dummy_endwhere = endwheres[0]


val d0eclseq_WHEREs = $list{d0eclseq_WHERE}
(
d0eclseq_WHERE(dummy_token, dummy_tokenopt, dummy_d0eclist, dummy_endwhere)
)
  val
  dummy_d0eclseq_WHERE = d0eclseq_WHEREs[0]


val f0unarrows = $list{f0unarrow}
(
F0UNARROWnone(dummy_token(*error*)),
F0UNARROWdflt(dummy_token(*=>*)),
F0UNARROWlist(dummy_token(*=<*), dummy_s0explst, dummy_token (*>*))
)
  val
  dummy_f0unarrow = f0unarrows[0]


val d0exps = $list{d0exp_node}
(
D0Eid(dummy_d0eid),
D0Eint(dummy_t0int),
D0Echr(dummy_t0chr),
D0Eflt(dummy_t0flt),
D0Estr(dummy_t0str),
D0Eapps(dummy_d0explst),
D0Esqarg(dummy_token, dummy_s0explst, dummy_token),
D0Etqarg(dummy_token, dummy_s0explst, dummy_token),
D0Eparen(dummy_token, dummy_d0explst, dummy_d0exp_RPAREN),
D0Etuple(dummy_token, dummy_tokenopt, dummy_d0explst, dummy_d0exp_RPAREN),
D0Erecord(dummy_token, dummy_tokenopt, dummy_labd0explst, dummy_labd0exp_RBRACE),
D0Eif0(dummy_token, dummy_d0exp, dummy_d0exp_THEN, dummy_d0exp_ELSE, dummy_tokenopt),
D0Ecase(dummy_token, dummy_d0exp, dummy_token(*OF*), dummy_tokenopt(*BAR*), dummy_d0claulst, dummy_tokenopt),
D0Elet(dummy_token, dummy_d0eclist, dummy_tokenopt(*IN*), dummy_d0explst, dummy_token(*END*)),
D0Ewhere(dummy_d0exp, dummy_d0eclseq_WHERE),
D0Ebrack(dummy_token, dummy_d0explst, dummy_token),
D0Edtsel(dummy_token, dummy_l0abl, dummy_d0expopt),
D0Elam(dummy_token(*lam/lam@*), dummy_f0arglst(*arglst*), dummy_effs0expopt, dummy_f0unarrow, dummy_d0exp, dummy_tokenopt),
D0Efix(dummy_token(*fix/fix@*), dummy_d0eid(*fixed-pnt*), dummy_f0arglst(*arglst*), dummy_effs0expopt, dummy_f0unarrow, dummy_d0exp, dummy_tokenopt),
D0Eanno(dummy_d0exp, dummy_s0exp),
D0Equal(dummy_token, dummy_d0exp),
D0Enone(dummy_token)
)


(*
fun
d0exp_make_node
(loc: loc_t, node: d0exp_node): d0exp
*)
//
  //

  //

(*
datatype
d0gua_node =
| D0GUAexp of (d0exp)
| D0GUAmat of (d0exp, token(*AS*), d0pat)
*)

val d0guas = $list{d0gua_node}
(
D0GUAexp(dummy_d0exp),
D0GUAmat(dummy_d0exp, dummy_token(*AS*), dummy_d0pat)
)

  val
  dummy_d0gua = d0gua_make_node(dummy_loc, d0guas[0])

  //

(*
datatype
d0clau_node =
| D0CLAUgpat of (d0gpat)
| D0CLAUclau of (d0gpat, token(*EQGT*), d0exp)
*)

(*
and
d0gpat_node =
| D0GPATpat of (d0pat)
| D0GPATgua of (d0pat, token(*WHEN*), d0gualst)
*)
val d0gpats = $list{d0gpat_node}
(
D0GPATpat(dummy_d0pat),
D0GPATgua(dummy_d0pat, dummy_token(*WHEN*), dummy_d0gualst)
)


  val
  dummy_d0gpat = d0gpat_make_node(dummy_loc, d0gpats[0])


val d0claus = $list{d0clau_node}
(
D0CLAUgpat(dummy_d0gpat),
D0CLAUclau(dummy_d0gpat, dummy_token(*EQGT*), dummy_d0exp)
)

  val
  dummy_d0clau = d0clau_make_node(dummy_loc, d0claus[0])

  //

(*
datatype
decmodopt =
| DECMODnone of ()
| DECMODsing of (token(*COLON*), i0dnt)
| DECMODlist of (token(*COLON*), token, i0dntlst(*ids*), token)
*)

val decmodopts = $list{decmodopt}
(
DECMODnone(),
DECMODsing(dummy_token(*COLON*), dummy_i0dnt),
DECMODlist(dummy_token(*COLON*), dummy_token, dummy_i0dntlst(*ids*), dummy_token)
)


(*
fun
decmodopt_rec(decmodopt): int
fun
decmodopt_tlrec(decmodopt): int
*)
  val
  dummy_decmodopt = decmodopts[0]

  //

(*
datatype
teqd0expopt =
| TEQD0EXPnone of ((*void*))
| TEQD0EXPsome of (token(*EQ*), d0exp)
*)

val teqd0expopts = $list{teqd0expopt}
(
TEQD0EXPnone((*void*)),
TEQD0EXPsome(dummy_token(*EQ*), dummy_d0exp)
)

  val
  dummy_teqd0expopt = teqd0expopts[0]

(*
datatype
wths0expopt =
| WTHS0EXPnone of ((*void*))
| WTHS0EXPsome of (token(*WITHTYPE*), s0exp)
*)

val wths0expopts = $list{wths0expopt}
(
WTHS0EXPnone((*void*)),
WTHS0EXPsome(dummy_token(*WITHTYPE*), dummy_s0exp)
)

  val
  dummy_wths0expopt = wths0expopts[0]

  //

(*
datatype
v0aldecl =
V0ALDECL of
@{loc= loc_t, pat= d0pat, teq= tokenopt, def= d0expopt, wtp= wths0expopt}
*)

val v0aldecls = $list{v0aldecl}
(
V0ALDECL(
@{
loc= dummy_loc,
pat= dummy_d0pat,
teq= dummy_tokenopt,
def= dummy_d0expopt,
wtp= dummy_wths0expopt
})
)

  val
  dummy_v0aldecl = v0aldecls[0]
  val
  dummy_v0aldeclist = list_nil{v0aldecl}()


(*
fun
v0aldecl_get_loc(v0aldecl): loc_t
overload .loc with v0aldecl_get_loc
*)

  //

(*
var
foo:
s0exp with pfat = d0exp
*)

(*
datatype
v0ardecl =
V0ARDECL of @{
  loc= loc_t
, nam= d0pid
, wth= d0pidopt
, res= s0expopt
, ini= teqd0expopt
} where
  d0pidopt = Option(d0pid)
*)

  val dummy_d0pidopt = None{d0pid}()

val v0ardecls = $list{v0ardecl}
(
V0ARDECL(
@{
  loc= dummy_loc_t
, nam= dummy_d0pid
, wth= dummy_d0pidopt
, res= dummy_s0expopt
, ini= dummy_teqd0expopt
})
)
  val
  dummy_v0ardecl = v0ardecls[0]
  val
  dummy_v0ardeclist = list_nil{v0ardecl}()

//
(*
fun
v0ardecl_get_loc(v0ardecl): loc_t
overload .loc with v0ardecl_get_loc
*)

  //

(*
datatype
f0undecl =
F0UNDECL of @{
  loc= loc_t
, nam= d0pid
, arg= f0arglst
, res= effs0expopt
, teq= tokenopt
, def= d0expopt
, wtp= wths0expopt
} (* f0undecl *)
*)
//

val f0undecls = $list{f0undecl}
(
F0UNDECL(
@{
  loc= dummy_loc_t
, nam= dummy_d0pid
, arg= dummy_f0arglst
, res= dummy_effs0expopt
, teq= dummy_tokenopt
, def= dummy_d0expopt
, wtp= dummy_wths0expopt
})
)

  val
  dummy_f0undecl = f0undecls[0]
  val
  dummy_f0undeclist = list_nil{f0undecl}()


(*
fun
f0undecl_get_loc(f0undecl): loc_t
overload .loc with f0undecl_get_loc
*)

  //

(*
datatype
d0cstdecl =
D0CSTDECL of @{
  loc= loc_t
, nam= d0pid
, arg= d0arglst
, res= effs0expopt
, def= teqd0expopt
}
*)

val d0cstdecls = $list{d0cstdecl}
(
D0CSTDECL(
@{
  loc= dummy_loc_t,
  nam= dummy_d0pid,
  arg= dummy_d0arglst,
  res= dummy_effs0expopt,
  def= dummy_teqd0expopt
})
)

  val
  dummy_d0cstdecl = d0cstdecls[0]
  val
  dummy_d0cstdeclist = list_nil{d0cstdecl}()


(*
fun
d0cstdecl_get_loc(d0cstdecl): loc_t
overload .loc with d0cstdecl_get_loc
*)

  //

(*
datatype
d0ecl_node =
| D0Cnone of (token)
| D0Ctokerr of (token)
| D0Cnonfix of (token, i0dntlst)
| D0Cfixity of (token, i0dntlst, precopt)
| D0Cstatic of (token(*STATIC*), d0ecl)
| D0Cextern of (token(*EXTERN*), d0ecl)
| D0Cdefine of (token, g0eid(*fun*), g0marglst(*arg*), g0expdef(*opt*))
| D0Cmacdef of (token, g0eid(*fun*), g0marglst(*arg*), d0macdef(*d0exp*))
| D0Cinclude of (token(*INCLUDE*), d0exp)
| D0Cstaload of (token(*#STALOAD*), d0exp)
(*
| D0Cdynload of (token(*#DYNLOAD*), d0exp)
*)
| D0Cabssort of (token, s0tid)
| D0Cstacst0 of (token, s0eid, t0marglst, token, sort0)
| D0Csortdef of (token, s0tid, token, s0rtdef)
| D0Csexpdef of (token, s0eid, s0marglst, sort0opt, token, s0exp)
| D0Cabstype of (token, s0eid, t0marglst, sort0opt, abstdf0)
| D0Cabsimpl of (token, sq0eid, s0marglst, sort0opt, token(*EQ*), s0exp)
| D0Cvaldecl of (token(*valkind*), decmodopt, v0aldeclist)
| D0Cvardecl of (token(*varkind*), decmodopt, v0ardeclist)
| D0Cfundecl of (token(*funkind*), decmodopt, tq0arglst, f0undeclist)
| D0Cimpdecl of (token(*impkind*), decmodopt, sq0arglst, tq0arglst, dq0eid, ti0arglst, f0arglst, effs0expopt, token(*EQ*), d0exp(*body*))
| D0Csymload of (token(*SYMLOAD*), s0ymb, token, dq0eid, t0intopt)
| D0Cdatasort of (token(*datasort*), d0tsortlst)
| D0Cdatatype of (token(*datatype*), d0atypelst, wd0eclseq)
| D0Cdynconst of (token(*dyncstkind*), tq0arglst, d0cstdeclist)
| D0Clocal of (token(*LOCAL*), d0eclist, tokenopt(*IN*), d0eclist, token(*END*))
*)

(*
and
precopt =
| PRECOPTnil of ()
| PRECOPTint of (token)
| PRECOPTopr of (i0dnt, precmod)
*)

(*
and
precmod =
| PRECMODnone of ()
| PRECMODsome of (token, signint, token)
*)

(*
and
signint =
| SIGNINTint of (token(*int*))
| SIGNINTopr of (token(*opr*), token(*int*))
*)

  //

(*
and
abstdf0 =
| ABSTDF0some of () // unspecified
| ABSTDF0lteq of (token(*"<="*), s0exp)
| ABSTDF0eqeq of (token(*"=="*), s0exp)
*)

  //

(*
and
g0expdef =
| G0EDEFnone of ()
| G0EDEFsome of (tokenopt, g0exp(*def*))
*)

(*
and
d0macdef =
| D0MDEFnone of ()
| D0MDEFsome of (tokenopt, d0exp(*def*))
*)

  //

(*
and
wd0eclseq =
| WD0CSnone of ()
| WD0CSsome of (token(*where*), tokenopt, d0eclist, token)
*)

  //


val dummy_d0eclist = list_nil{d0ecl}()

val signints = $list{signint}
(
SIGNINTint(dummy_token(*int*)),
SIGNINTopr(dummy_token(*opr*), dummy_token(*int*))
)

  val
  dummy_signint = signints[0]


val precmods = $list{precmod}
(
PRECMODnone(),
PRECMODsome(dummy_token, dummy_signint, dummy_token)
)
  val
  dummy_precmod = precmods[0]

val precopts = $list{precopt}
(
PRECOPTnil(),
PRECOPTint(dummy_token),
PRECOPTopr(dummy_i0dnt, dummy_precmod)
)

  val
  dummy_precopt = precopts[0]


val abstdf0s = $list{abstdf0}
(
ABSTDF0some(),
ABSTDF0lteq(dummy_token(*"<="*), dummy_s0exp),
ABSTDF0eqeq(dummy_token(*"=="*), dummy_s0exp)
)

  val
  dummy_abstdf0 = abstdf0s[0]

val g0expdefs = $list{g0expdef}
(
G0EDEFnone(),
G0EDEFsome(dummy_tokenopt, dummy_g0exp(*def*))
)

  val dummy_g0expdef = g0expdefs[0]

val d0macdefs = $list{d0macdef}
(
D0MDEFnone(),
D0MDEFsome(dummy_tokenopt, dummy_d0exp(*def*))
)
  val dummy_d0macdef = d0macdefs[0]

val wd0eclseqs = $list{wd0eclseq}
(
WD0CSnone(),
WD0CSsome(dummy_token(*where*), dummy_tokenopt, dummy_d0eclist, dummy_token)
)

  val
  dummy_wd0eclseq = wd0eclseqs[0]


val dummy_d0ecl = d0ecl_make_node(dummy_loc, D0Cnone(dummy_token))

val d0ecls = $list{d0ecl_node}
(
D0Cnone(dummy_token),
D0Ctokerr(dummy_token),
D0Cnonfix(dummy_token, dummy_i0dntlst),
D0Cfixity(dummy_token, dummy_i0dntlst, dummy_precopt),
D0Cstatic(dummy_token(*STATIC*), dummy_d0ecl),
D0Cextern(dummy_token(*EXTERN*), dummy_d0ecl),
D0Cdefine(dummy_token, dummy_g0eid(*fun*), dummy_g0marglst(*arg*), dummy_g0expdef(*opt*)),
D0Cmacdef(dummy_token, dummy_g0eid(*fun*), dummy_g0marglst(*arg*), dummy_d0macdef(*d0exp*)),
D0Cinclude(dummy_token(*INCLUDE*), dummy_d0exp),
D0Cstaload(dummy_token(*#STALOAD*), dummy_d0exp),
D0Cabssort(dummy_token, dummy_s0tid),
D0Cstacst0(dummy_token, dummy_s0eid, dummy_t0marglst, dummy_token, dummy_sort0),
D0Csortdef(dummy_token, dummy_s0tid, dummy_token, dummy_s0rtdef),
D0Csexpdef(dummy_token, dummy_s0eid, dummy_s0marglst, dummy_sort0opt, dummy_token, dummy_s0exp),
D0Cabstype(dummy_token, dummy_s0eid, dummy_t0marglst, dummy_sort0opt, dummy_abstdf0),
D0Cabsimpl(dummy_token, dummy_sq0eid, dummy_s0marglst, dummy_sort0opt, dummy_token(*EQ*), dummy_s0exp),
D0Cvaldecl(dummy_token(*valkind*), dummy_decmodopt, dummy_v0aldeclist),
D0Cvardecl(dummy_token(*varkind*), dummy_decmodopt, dummy_v0ardeclist),
D0Cfundecl(dummy_token(*funkind*), dummy_decmodopt, dummy_tq0arglst, dummy_f0undeclist),
D0Cimpdecl(dummy_token(*impkind*), dummy_decmodopt, dummy_sq0arglst, dummy_tq0arglst, dummy_dq0eid, dummy_ti0arglst, dummy_f0arglst, dummy_effs0expopt, dummy_token(*EQ*), dummy_d0exp(*body*)),
D0Csymload(dummy_token(*SYMLOAD*), dummy_s0ymb, dummy_token, dummy_dq0eid, dummy_t0intopt),
D0Cdatasort(dummy_token(*datasort*), dummy_d0tsortlst),
D0Cdatatype(dummy_token(*datatype*), dummy_d0atypelst, dummy_wd0eclseq),
D0Cdynconst(dummy_token(*dyncstkind*), dummy_tq0arglst, dummy_d0cstdeclist),
D0Clocal(dummy_token(*LOCAL*), dummy_d0eclist, dummy_tokenopt(*IN*), dummy_d0eclist, dummy_token(*END*))
)

(*
fun
d0ecl_make_node
(loc: loc_t, node: d0ecl_node): d0ecl
*)

  //


(*
dummy_q0arglst
dummy_q0arg
q0args

dummy_sq0arglst
dummy_sq0arg
sq0args

dummy_tq0arg
dummy_tq0arglst
tq0args

dummy_ti0arglst
dummy_ti0arg
ti0args

dummy_a0typlst
dummy_a0typopt
dummy_a0typlstopt
dummy_a0typ
a0typs

dummy_d0arglst
dummy_d0arg
d0args

dummy_f0arglst
dummy_f0arg
f0args

dummy_labd0pat_RBRACE
labd0pat_RBRACEs

dummy_d0pat_RPAREN
d0pat_RPARENs

dummy_d0patlst
dummy_d0pat
d0pats

dummy_labd0patlst
dummy_labd0pat

dummy_d0exp_RPAREN
d0exp_RPARENs

dummy_labd0exp_RBRACE
labd0exp_RBRACEs

dummy_d0exp_THEN
d0exp_THENs

dummy_d0exp_ELSE
d0exp_ELSEs

dummy_endwhere
endwheres

dummy_d0eclseq_WHERE
d0eclseq_WHEREs

dummy_f0unarrow
f0unarrows

dummy_d0explst
dummy_d0expopt
dummy_d0exp
d0exps

dummy_labd0explst
dummy_labd0exp

dummy_d0gualst
dummy_d0gua
d0guas

dummy_d0patlst
dummy_d0gpat
d0gpats

dummy_d0claulst
dummy_d0clau
d0claus

dummy_decmodopt
decmodopts

dummy_teqd0expopt
teqd0expopts

dummy_wths0expopt
wths0expopts


    dummy_d0pidopt

dummy_v0aldecl
dummy_v0aldeclist
v0aldecls

dummy_v0ardecl
dummy_v0ardeclist
v0ardecls

dummy_f0undecl
dummy_f0undeclist
f0undecls

dummy_d0cstdeclist
dummy_d0cstdecl
d0cstdecls

dummy_signint
signints

dummy_precmod
precmods

dummy_precopt
precopts

dummy_abstdf0
abstdf0s

dummy_g0expdef
g0expdefs

dummy_d0macdef
d0macdefs

dummy_wd0eclseq
wd0eclseqs

dummy_d0eclist
dummy_d0ecl
d0ecls

*)

////

// staexp1
#staload "{$x}/SATS/staexp1.sats"

val dummy_g1explst = list_nil{g1exp}()
val dummy_g1expopt = None{g1exp}()

val dummy_g1arg = dummy_token
val dummy_g1arglst = list_nil{g1arg}()
val dummy_g1marglst = list_nil{g1marg}()

(*
datatype
g1exp_node =
| G1Eid of (sym_t)
| G1Eint of (token)
| G1Eapp of ()
| G1Eapp1 of (g1exp(*fun*), g1exp)
| G1Eapp2 of (g1exp(*fun*), g1exp, g1exp)
| G1Elist of (g1explst)
| G1Enone of (loc_t)
*)

val dummy_g1exp = g1exp_none(dummy_loc)

val g1exps = $list{g1exp_node}
(
G1Eid(dummy_sym_t),
G1Eint(dummy_token),
G1Eapp(),
G1Eapp1(dummy_g1exp(*fun*), dummy_g1exp),
G1Eapp2(dummy_g1exp(*fun*), dummy_g1exp, dummy_g1exp),
G1Elist(dummy_g1explst),
G1Enone(dummy_loc_t)
)

(*
datatype
g1marg_node =
(*
| G1MARGnone of ((*void*))
*)
| G1MARGsarg of (g1arglst)
| G1MARGdarg of (g1arglst)
*)

val g1margs = $list{g1marg_node}
(
G1MARGsarg(dummy_g1arglst),
G1MARGdarg(dummy_g1arglst)
)

val dummy_g1marg = g1marg_make_node(dummy_loc, g1margs[0])

//

val dummy_sort1lst = list_nil{sort1}()
val dummy_sort1opt = None{sort1}()
val dummy_s1explst = list_nil{s1exp}()
val dummy_s1expopt = None{s1exp}()

(*
datatype
sort1_node =
  | S1Tid of sym_t
  | S1Tint of token
  | S1Tapp of () // apply
(*
  | S1Ttype of int(*kind*)
    (*prop/view/type/t0ype/viewtype/viewt0ype*)
*)
  | S1Tapp1 of (sort1(*fun*), sort1)
  | S1Tapp2 of (sort1(*fun*), sort1, sort1)
  | S1Tlist of sort1lst // temporary
  | S1Tqual of (token, sort1)
  | S1Tnone of ((*error indication*))
*)

val dummy_sort1 = sort1_none(dummy_loc)

val sort1s = $list{sort1_node}
(
S1Tid(dummy_sym_t),
S1Tint(dummy_token),
S1Tapp(),
S1Tapp1(dummy_sort1, dummy_sort1),
S1Tapp2(dummy_sort1, dummy_sort1, dummy_sort1),
S1Tlist(dummy_sort1lst),
S1Tqual(dummy_token, dummy_sort1),
S1Tnone()
)

//

(*
datatype
s1rtcon_node =
| S1RTCON of (token, sort1opt)
*)

val s1rtcons = $list{s1rtcon_node}
(
S1RTCON(dummy_token, dummy_sort1opt)
)

val dummy_s1rtcon = s1rtcon_make_node(dummy_loc, s1rtcons[0])
val dummy_s1rtconlst = list_nil{s1rtcon}()


(*
datatype
d1tsort_node =
| D1TSORT of (token, s1rtconlst)
*)

val d1tsorts = $list{d1tsort_node}
(
D1TSORT(dummy_token, dummy_s1rtconlst)
)

val dummy_d1tsort = d1tsort_make_node(dummy_loc, d1tsorts[0])
val dummy_d1tsortlst = list_nil{d1tsort}()

//

(*
datatype
s1arg_node =
| S1ARGsome of (token, sort1opt)
*)

val s1args = $list{s1arg_node}
(
S1ARGsome(dummy_token, dummy_sort1opt)
)

val dummy_s1arg = s1arg_make_node(dummy_loc, s1args[0])
val dummy_s1arglst = list_nil{s1arg}()


//

(*
datatype
s1rtdef_node =
| S1RTDEFsort of sort1
| S1RTDEFsbst of (s1arg, s1explst)
*)

val s1rtdefs = $list{s1rtdef_node}
(
S1RTDEFsort(dummy_sort1),
S1RTDEFsbst(dummy_s1arg, dummy_s1explst)
)

val dummy_s1rtdef = s1rtdef_make_node(dummy_loc, s1rtdefs[0])

//

(*
datatype
s1marg_node =
| S1MARGlist of (s1arglst)
*)

val s1margs = $list{s1marg_node}
(
S1MARGlist(dummy_s1arglst)
)

val dummy_s1marg = s1marg_make_node(dummy_loc, s1margs[0])
val dummy_s1marglst = list_nil{s1marg}()
val dummy_s1arglst = list_nil{s1arg}()


//

(*
datatype
t1arg_node =
(*
| T1ARGnone of ()
*)
| T1ARGsome of (sort1, tokenopt)
*)

val t1args = $list{t1arg_node}
(
T1ARGsome(dummy_sort1, dummy_tokenopt)
)

val dummy_t1arg = t1arg_make_node(dummy_loc, t1args[0])
val dummy_t1arglst = list_nil{t1arg}()


//
(*
datatype
t1marg_node =
(*
| T1MARGnone of token(*error*)
*)
| T1MARGlist of t1arglst(*arglst*)
*)

val t1margs = $list{t1marg_node}
(
T1MARGlist(dummy_t1arglst)
)

val dummy_t1marg = t1marg_make_node(dummy_loc, t1margs[0])
val dummy_t1marglst = list_nil{t1marg}()

//

//
(*
datatype
s1qua_node =
| S1QUAprop of s1exp
| S1QUAvars of (tokenlst, sort1opt)
*)

val dummy_s1exp = s1exp_none(dummy_loc)

val s1quas = $list{s1qua_node}
(
S1QUAprop(dummy_s1exp),
S1QUAvars(dummy_tokenlst, dummy_sort1opt)
)

val dummy_s1qua = s1qua_make_node(dummy_loc, s1quas[0])
val dummy_s1qualst = list_nil{s1qua}()

//

(*
datatype
s1uni_node =
  | S1UNIsome of (s1qualst)
*)

val s1unis = $list{s1uni_node}
(
S1UNIsome(dummy_s1qualst)
)

val dummy_s1uni = s1uni_make_node(dummy_loc, s1unis[0])
val dummy_s1unilst = list_nil{s1uni}()

//

typedef labs1exp = sl0abled(s1exp)
val dummy_labs1explst = list_nil{labs1exp}()

//

(*
datatype
s1exp_node =
| S1Eid of (sym_t)
| S1Eint of (token)
| S1Echr of (token)
| S1Eflt of (token)
| S1Estr of (token)
| S1Eapp of ()
| S1Ebs0 of ()
| S1Ebs1 of (s1exp)
| S1Eimp of (s1explst)
(*
| S1Eapps of
  (s1exp, s1explst) // apply
*)
| S1Eapp1 of (s1exp(*fun*), s1exp)
| S1Eapp2 of (s1exp(*fun*), s1exp, s1exp)
| S1Elist of (s1explst)
| S1Elist of (s1explst, s1explst)
| S1Etuple of (int, s1explst)
| S1Etuple of (int, s1explst, s1explst)
| S1Erecord of (int, labs1explst)
| S1Erecord of (int, labs1explst, labs1explst)
| S1Eforall of (s1qualst)
| S1Eexists of (int(*#*), s1qualst)
| S1Elam of (s1marglst, sort1opt(*res*), s1exp(*body*))
| S1Eanno of (s1exp, sort1)
| S1Equal of (token(*module*), s1exp)
| S1Enone of (loc_t)
*)

val s1exps = $list{s1exp_node}
(
S1Eid(dummy_sym_t),
S1Eint(dummy_token),
S1Echr(dummy_token),
S1Eflt(dummy_token),
S1Estr(dummy_token),
S1Eapp(),
S1Ebs0(),
S1Ebs1(dummy_s1exp),
S1Eimp(dummy_s1explst),
S1Eapp1(dummy_s1exp(*fun*), dummy_s1exp),
S1Eapp2(dummy_s1exp(*fun*), dummy_s1exp, dummy_s1exp),
S1Elist(dummy_s1explst),
S1Elist(dummy_s1explst, dummy_s1explst),
S1Etuple(dummy_int, dummy_s1explst),
S1Etuple(dummy_int, dummy_s1explst, dummy_s1explst),
S1Erecord(dummy_int, dummy_labs1explst),
S1Erecord(dummy_int, dummy_labs1explst, dummy_labs1explst),
S1Eforall(dummy_s1qualst),
S1Eexists(dummy_int(*#*), dummy_s1qualst),
S1Elam(dummy_s1marglst, dummy_sort1opt(*res*), dummy_s1exp(*body*)),
S1Eanno(dummy_s1exp, dummy_sort1),
S1Equal(dummy_token(*module*), dummy_s1exp),
S1Enone(dummy_loc_t)
)


//

(*
datatype
effs1expopt =
| EFFS1EXPnone of ()
| EFFS1EXPsome of (s1exp)
(*
| EFFS1EXPsome of (s1eff, s1exp)
*)
*)
val effs1expopts = $list{effs1expopt}
(
EFFS1EXPnone(),
EFFS1EXPsome(dummy_s1exp)
)

val dummy_effs1expopt = effs1expopts[0]

(*
datatype
d1atcon_node =
| D1ATCON of (s1unilst, token(*nm*), s1explst, s1expopt)
*)
val d1atcons = $list{d1atcon_node}
(
D1ATCON(dummy_s1unilst, dummy_token(*nm*), dummy_s1explst, dummy_s1expopt)
)

val dummy_d1atcon = d1atcon_make_node(dummy_loc, d1atcons[0])
val dummy_d1atconlst = list_nil{d1atcon}()


//

(*
datatype
d1atype_node =
| D1ATYPE of (token(*name*), t1marglst, sort1opt, d1atconlst)
*)

val d1atypes = $list{d1atype_node}
(
D1ATYPE(dummy_token(*name*), dummy_t1marglst, dummy_sort1opt, dummy_d1atconlst)
)
val dummy_d1atype = d1atype_make_node(dummy_loc, d1atypes[0])
val dummy_d1atypelst = list_nil{d1atype}()

//

(*
val dummy_? = ?_make_node(dummy_loc, ?s[0])
val dummy_?lst = list_nil{?}()
*)

//

#staload "{$x}/SATS/staexp2.sats"



(*
datatype
sort2 =
| S2Tid of (sym_t)
| S2Tint of (int)
| S2Tbas of (t2bas)
(*
| S2Txtv of (t2xtv)
*)
| S2Ttup of ()
| S2Ttup of (sort2lst)
| S2Tfun of ()
| S2Tfun of (sort2lst, sort2)
| S2Tapp of (sort2, sort2lst)
| S2Tnone0 ()
| S2Tnone1 of (sort1)
*)
(*
and t2bas =
| T2BASpre of (sym_t) // predicative: int, ...
| T2BASabs of (t2abs) // for abstract sorts
| T2BASdat of (t2dat) // for user-defined datasorts
| T2BASimp of (int(*knd*), sym_t) // impredicative sorts
*)

val dummy_t2abs = t2abs_new(dummy_sym_t)
val dummy_t2dat = t2dat_new(dummy_sym_t)

val t2bass = $list{t2bas}
(
T2BASpre(dummy_sym_t),
T2BASabs(dummy_t2abs),
T2BASdat(dummy_t2dat),
T2BASimp(dummy_int(*knd*), dummy_sym_t)
)
val dummy_t2bas = t2bass[0]


val dummy_sort2lst = list_nil{sort2}()
val dummy_sort2 = S2Tid(dummy_sym_t)

val sort2s = $list{sort2}
(
S2Tid(dummy_sym_t),
S2Tint(dummy_int),
S2Tbas(dummy_t2bas),
S2Ttup(),
S2Ttup(dummy_sort2lst),
S2Tfun(),
S2Tfun(dummy_sort2lst, dummy_sort2),
S2Tapp(dummy_sort2, dummy_sort2lst),
S2Tnone0(),
S2Tnone1(dummy_sort1)
)

val dummy_sort2opt = None{sort2}()
val dummy_sort2lst = list_nil{sort2}()
val dummy_sort2lstopt = None{sort2lst}()

(*
val
the_sort2_int : sort2
val
the_sort2_addr : sort2
val
the_sort2_bool : sort2
val
the_sort2_char : sort2

val
the_sort2_real : sort2
val
the_sort2_float : sort2
val
the_sort2_string : sort2

(* ****** ****** *)
//
val
the_sort2_prop : sort2
val
the_sort2_view : sort2
//
val
the_sort2_tbox : sort2
val
the_sort2_tflt : sort2
//
val
the_sort2_vtbox : sort2
val
the_sort2_vtflt : sort2
*)


val dummy_s2xtv = s2xtv_new(dummy_loc_t, dummy_sort2)



(*
fun
s2cst_get_sym(s2cst): sym_t
fun
s2cst_get_loc(s2cst): loc_t
fun
s2cst_get_sort(s2cst): sort2
fun
s2cst_get_stamp(s2cst): stamp
*)
val dummy_s2cstlst = list_nil{s2cst}()
val dummy_s2cstopt = None{s2cst}()
val dummy_s2cstlstlst = list_nil{s2cstlst}()



val dummy_s2cst = s2cst_make_idst(dummy_token, dummy_sort2)


//


(*
fun
s2var_get_sym(s2var): sym_t
fun
s2var_get_sort(s2var): sort2
fun
s2var_set_sort(s2var, sort2): void
fun
s2var_get_stamp(s2var): stamp
*)


val dummy_s2varlst = list_nil{s2var}()
val dummy_s2varopt = None{s2var}()
val dummy_s2varlstlst = list_nil{s2varlst}()
val dummy_s2var = s2var_make_idst(dummy_sym_t, dummy_sort2)


val tmp = s2cstref_make_name("tmp?")
val dummy_t2ype = s2cstref_get_type(tmp)


val dummy_s2explst = list_nil{s2exp}()
val dummy_s2expopt = None{s2exp}()

(*
fun
s2xtv_get_loc(s2xtv): loc_t
fun
s2xtv_get_sort(s2xtv): sort2
//
fun
s2xtv_get_sexp(s2xtv): s2exp
fun
s2xtv_set_sexp(s2xtv, s2exp): void
//
fun
s2xtv_get_stamp(s2xtv): stamp
*)

val dummy_s2xtv = s2xtv_new(dummy_loc_t, dummy_sort2)

val dummy_s2hnflst = list_nil{s2hnf}()
val dummy_s2hnfopt = None{s2hnf}()

val dummy_t2ypelst = list_nil{t2ype}()
val dummy_t2ypeopt = None{t2ype}()



//

(*
datatype
s2txt =
(* extended sort *)
| S2TXTsrt of sort2
| S2TXTsub of
  (s2var, s2explst(*prop*))
(*
| S2TXTerr of (loc_t) // error indication
*)
*)

val s2txts = $list{s2txt}
(
S2TXTsrt(dummy_sort2),
S2TXTsub(dummy_s2var, dummy_s2explst)
)

val dummy_s2txt = s2txts[0]
val dummy_s2txtopt = None{s2txt}()

(*
datatype
tyrec =
//
| TYRECbox0 (* box *)
| TYRECbox1 (* box *)
//
| TYRECflt0 (* flat *)
(*
| TYRECflt1 of stamp (* flat *)
*)
| TYRECflt2 of string  (* flat *)
// end of [tyrec]
*)

val tyrecs = $list{tyrec}
(
TYRECbox0(),
TYRECbox1(),
TYRECflt0(),
TYRECflt2(dummy_string)
)

val dummy_tyrec = tyrecs[0]


(*
datatype
labs2exp =
| SLABELED of (label, s2exp)
where
labs2explst = List0(labs2exp)
*)

val dummy_s2exp = s2exp_make_node(dummy_sort2, S2Eint(dummy_int))


val labs2exps = $list{labs2exp}
(
SLABELED(dummy_label, dummy_s2exp)
)

val dummy_labs2exp = labs2exps[0]

val dummy_labs2explst = list_nil{labs2exp}()


(*
datatype
s2exp_node =
| S2Eint of (int)
| S2Echr of (char)
| S2Estr of (string)
| S2Ecst of (s2cst)
| S2Evar of (s2var)
| S2Extv of (s2xtv)
| S2Eapp of (s2exp, s2explst)
| S2Elam of (s2varlst, s2exp)
| S2Eany of (int)
| S2Etop of (int(*knd*), s2exp)
| S2Earg of (int(*knd*), s2exp)
| S2Eatx of (s2exp(*bef*), s2exp(*aft*))
(*
| S2Efun of
  (int(*npf*), s2explst, s2exp)
*)
| S2Efun of(funclo2, int(*npf*), s2explst(*arg*), s2exp(*res*))
| S2Ecimp of (loc_t, s2exp)
| S2Ecprf of (loc_t, s2exp)
| S2Ectcd of (loc_t, s2exp)
| S2Ecast of (loc_t, s2exp, sort2)
| S2Emet of (s2explst(*met*), s2exp(*body*))
| S2Eexi of (s2varlst(*vars*), s2explst(*props*), s2exp(*body*))
| S2Euni of (s2varlst(*vars*), s2explst(*props*), s2exp(*body*))
(*
| S2Elist of (s2explst)
*)
| S2Etyext of (string(*name*), s2explst)
| S2Etyrec of (tyrec, int(*npf*), labs2explst)
| S2Enone0 of ()
| S2Enone1 of s1exp(*src*)
*)


val s2exps = $list{s2exp_node}
(
S2Eint(dummy_int),
S2Echr(dummy_char),
S2Estr(dummy_string),
S2Ecst(dummy_s2cst),
S2Evar(dummy_s2var),
S2Extv(dummy_s2xtv),
S2Eapp(dummy_s2exp, dummy_s2explst),
S2Elam(dummy_s2varlst, dummy_s2exp),
S2Eany(dummy_int),
S2Etop(dummy_int(*knd*), dummy_s2exp),
S2Earg(dummy_int(*knd*), dummy_s2exp),
S2Eatx(dummy_s2exp(*bef*), dummy_s2exp(*aft*)),
S2Efun(dummy_funclo2, dummy_int(*npf*), dummy_s2explst(*arg*), dummy_s2exp(*res*)),
S2Ecimp(dummy_loc_t, dummy_s2exp),
S2Ecprf(dummy_loc_t, dummy_s2exp),
S2Ectcd(dummy_loc_t, dummy_s2exp),
S2Ecast(dummy_loc_t, dummy_s2exp, dummy_sort2),
S2Emet(dummy_s2explst(*met*), dummy_s2exp(*body*)),
S2Eexi(dummy_s2varlst(*vars*), dummy_s2explst(*props*), dummy_s2exp(*body*)),
S2Euni(dummy_s2varlst(*vars*), dummy_s2explst(*props*), dummy_s2exp(*body*)),
S2Etyext(dummy_string(*name*), dummy_s2explst),
S2Etyrec(dummy_tyrec, dummy_int(*npf*), dummy_labs2explst),
S2Enone0(),
S2Enone1(dummy_s1exp)
)

(*
datatype
abstdf2 =
| ABSTDF2none of () // nonabs
| ABSTDF2some of () // unspecified
| ABSTDF2lteq of s2exp // erasure
| ABSTDF2eqeq of s2exp // definition
*)

val abstdf2s = $list{abstdf2}
(
ABSTDF2none(),
ABSTDF2some(),
ABSTDF2lteq(dummy_s2exp),
ABSTDF2eqeq(dummy_s2exp)
)

val dummy_abstdf2 = abstdf2s[0]

(*
datatype
effs2expopt =
| EFFS2EXPnone of ()
| EFFS2EXPsome of (s2exp)
(*
| EFFS2EXPsome of (s2eff, s2exp)
*)
*)

val effs2expopts = $list{effs2expopt}
(
EFFS2EXPnone(),
EFFS2EXPsome(dummy_s2exp)
)

val dummy_effs2expopt = effs2expopts[0]

(*
datatype s2itm =
//
| S2ITMvar of (s2var)
//
| S2ITMcst of
    (s2cstlst) // supporting overload
  // end of [S2ITMcst]
//
(*
| S2ITMexp of (g1exp) // for generic stuff
*)
//
| S2ITMfmodenv of fmodenv
*)

(* val _ = $showtype(fmodenv) *)


//
(* val _ = $showtype(dummy_fmodenv) *)

val s2itms = $list{s2itm}
(
S2ITMvar(dummy_s2var),
S2ITMcst(dummy_s2cstlst)
(* S2ITMfmodenv(dummy_fmodenv) *)
)
where
  (* val dummy_fmodenv = _ : fmodenv *)
end

(* ****** ****** *)
