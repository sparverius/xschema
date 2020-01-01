(***********************************************************************)
(*                                                                     *)
(*                         Applied Type System                         *)
(*                                                                     *)
(***********************************************************************)

(*
** ATS/Xanadu - Unleashing the Potential of Types!
** Copyright (C) 2018 Hongwei Xi, ATS Trustful Software, Inc.
** All rights reserved
**
** ATS is free software;  you can  redistribute it and/or modify it under
** the terms of  the GNU GENERAL PUBLIC LICENSE (GPL) as published by the
** Free Software Foundation; either version 3, or (at  your  option)  any
** later version.
**
** ATS is distributed in the hope that it will be useful, but WITHOUT ANY
** WARRANTY; without  even  the  implied  warranty  of MERCHANTABILITY or
** FITNESS FOR A PARTICULAR PURPOSE.  See the  GNU General Public License
** for more details.
**
** You  should  have  received  a  copy of the GNU General Public License
** along  with  ATS;  see the  file COPYING.  If not, please write to the
** Free Software Foundation,  51 Franklin Street, Fifth Floor, Boston, MA
** 02110-1301, USA.
*)

(* ****** ****** *)
//
// Author: Hongwei Xi
// Start Time: November, 2019
// Authoremail: gmhwxiATgmailDOTcom
//
(* ****** ****** *)
//
%{^
//
extern
void
libxatsopt_dynloadall();
extern
void
libxnameof_dynloadall();
extern
void
libxargsof_dynloadall();
//
%} (* %{^ *)
val () =
$extfcall
(void, "libxatsopt_dynloadall")
val () =
$extfcall
(void, "libxnameof_dynloadall")
val () =
$extfcall
(void, "libxargsof_dynloadall")
//
(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#staload
UN = "prelude/SATS/unsafe.sats"
//
(* ****** ****** *)
//
(* #ifndef LIBS *)
(* #define LIBS *)
#include "./../HATS/libxatsopt.hats"
(* #include "./../HATS/libxnameof.hats" *)
(* #include "./../HATS/libxargsof.hats" *)
#include "./../HATS/libxnameof_all.hats"
#include "./../HATS/libxargsof_all.hats"
(* #endif *)
//
(* ****** ****** *)
//
#staload "./../SATS/schema.sats"
#staload "./../SATS/basics.sats"
#staload "./../SATS/fixity.sats"
#staload "./../SATS/label0.sats"
#staload "./../SATS/locinfo.sats"
#staload "./../SATS/lexing.sats"
#staload "./../SATS/stamp0.sats"
#staload "./../SATS/symbol.sats"
#staload "./../SATS/filpath.sats"
#staload "./../SATS/staexp0.sats"
#staload "./../SATS/dynexp0.sats"
#staload "./../SATS/staexp1.sats"
#staload "./../SATS/dynexp1.sats"
#staload "./../SATS/statyp2.sats"
#staload "./../SATS/staexp2.sats"
#staload "./../SATS/dynexp2.sats"
#staload "./../SATS/dynexp3.sats"
#staload "./../SATS/schema0.sats"

reassume ret_list_type_t
#staload _ = "./schema.dats"
#staload _ = "./basics.dats"
#staload _ = "./label0.dats"
#staload _ = "./locinfo.dats"
#staload _ = "./lexing_token.dats"
#staload _ = "./stamp0.dats"
#staload _ = "./symbol.dats"
#staload _ = "./filpath.dats"
#staload _ = "./staexp0.dats"
#staload _ = "./dynexp0.dats"
#staload _ = "./staexp1.dats"
#staload _ = "./dynexp1.dats"
#staload _ = "./statyp2.dats"
#staload _ = "./staexp2.dats"
#staload _ = "./dynexp2.dats"
#staload _ = "./dynexp3.dats"

//

(* ****** ****** *)
//
#staload
STDIO = "libats/libc/SATS/stdio.sats"
//
(* ****** ****** *)
//
datatype
commarg =
| COMMARG of (int, string)
//
typedef
commarglst
  (n:int) = list(commarg, n)
//
(* ****** ****** *)
//
extern
fun
parse_commarg
( string
) :<> commarg
and
parse_commarglst
  {n:nat}
( argc: int(n)
, argv: !argv(n)
) :<!wrt> commarglst(n)
//
(* ****** ****** *)

implement
parse_commarg
  (inp) = let
//
fun
loop
{n,i:nat|i <= n} .<n-i>.
(
  inp: string n, n: int n, i: int i
) :<> commarg =
(
if
(i < n)
then (
if (inp[i] != '-')
  then COMMARG(i, inp) else loop(inp, n, i+1)
) else COMMARG(n, inp)
// end of [if]
) (* end of [if] *)
// end of [loop]
//
in
//
if
(inp = "-")
then
(
COMMARG(0, inp)
)
else
(
  loop(inp, sz2i(len), 0)
) where
{
  val inp = g1ofg0(inp); val len = string_length(inp)
}
//
end // end of [parse_commarg]
//
(* ****** ****** *)

implement
parse_commarglst
  {n}(argc, argv) = let
//
vtypedef
arglst(n:int) = list_vt(commarg, n)
//
fun
loop
{i:nat | i <= n}{l:addr} .<n-i>.
( pf0: arglst(0) @ l
| argv: !argv(n), i: int i, p0: ptr l
) :<!wrt> (arglst(n-i) @ l | void) =
(
//
if
i < argc
then let
  val+~list_vt_nil() = !p0
  val x = parse_commarg(argv[i])
  val () =
  ( !p0 :=
    list_vt_cons(x, list_vt_nil())
  ) (* end of [val] *)
  val+@list_vt_cons(_, xs) = !p0
  val (pf | ()) =
    loop (view@xs | argv, i+1, addr@xs) // tail-call
  // end of [val]
in
  fold@(!p0); (pf0 | ())
end // end of [then]
else (pf0 | ()) // end of [else]
//
) (* end of [loop] *)
//
in
//
list_vt2t
(
res where
{
var res: ptr?
//
val () =
res := list_vt_nil{commarg}()
val
(pf | ()) =
loop
(view@res | argv, 0, addr@res)
// end of [val]
prval ((*void*)) = view@res := pf
//
}
) (* end of [list_vt2t] *)
//
end // end of [parse_commarglst]

(* ****** ****** *)
//
extern
fun
print_commarg(commarg): void
extern
fun
prerr_commarg(commarg): void
extern
fun
fprint_commarg
(out: FILEref, x0: commarg): void
//
(* ****** ****** *)
//
implement
print_commarg(x0) =
fprint_commarg(stdout_ref, x0)
implement
prerr_commarg(x0) =
fprint_commarg(stderr_ref, x0)
implement
fprint_commarg(out, x0) =
(
case+ x0 of
| COMMARG(i, k) =>
  fprint!(out, "COMMARG(", i, ", ", k, ")")
) (* end of [fprint_commarg] *)
//
(* ****** ****** *)
//
extern
fun
xatsopt_usage
( out: FILEref
, arg0: commarg): void
implement
xatsopt_usage
  (out, arg0) = let
//
val+COMMARG(_, cmdname) = arg0
//
in
//
fprintln!
(out, "Usage: ", cmdname, " <command> ... <command>\n");
fprintln!
(out, "where a <command> is of one of the following forms:\n");
//
fprintln! (out, "  -h (for printing out this help usage)");
fprintln! (out, "  --help (for printing out this help usage)");
//
fprintln! (out, "  -v (for printing out the version)");
fprintln! (out, "  --version (for printing out the version)");
//
fprintln! (out, "  -s <filenames> (for compiling static filenames)");
fprintln! (out, "  --static <filenames> (for compiling static filenames)");
//
fprintln! (out, "  -d <filenames> (for compiling dynamic filenames)");
fprintln! (out, "  --dynamic <filenames> (for compiling dynamic filenames)");
//
fprintln! (out, "  -o <filename> (output into filename)");
fprintln! (out, "  --output <filename> (output into filename)");
fprintln! (out, "  --output-w <filename> (output-write into filename)");
fprintln! (out, "  --output-a <filename> (output-append into filename)");
//
(*
fprintln! (out, "  -cc (for compiling into C)");
fprintln! (out, "  --compile (for compiling into C)");
*)
//
(*
fprintln! (out, "  -tc (for typechecking only)");
fprintln! (out, "  --tycheck (for typechecking only)");
*)
//
fprint_newline (out); // HX: needed for flushing out the output
//
end // end of [xatsopt_usage]
//
(* ****** ****** *)
//
extern
fun
xatsopt_version
  (out: FILEref): void
implement
xatsopt_version
  (out) = let
  val MAJOR = 0
  val MINOR = 0
  val MICRO = 0
in
  fprint!(out, "ATS/Xanadu version ");
  fprint!(out, MAJOR, ".", MINOR, ".", MICRO);
  fprintln!(out, " Copyright (c) 2018-20?? Hongwei Xi")
end // end of [xatsopt_version]
//
(* ****** ****** *)
//
extern
fun
the_fixity_load
(
XATSHOME: string
) : void =
  "ext#libxatsopt_the_fixity_load"
extern
fun
the_basics_load
(
XATSHOME: string
,
stadyn: int, given: string
) : void =
  "ext#libxatsopt_the_basics_load"
//
extern
fun
the_prelude_load
(
XATSHOME: string
,
stadyn: int, given: string
) : void =
  "ext#libxatsopt_the_prelude_load"
//
extern
fun
the_preludes_load
(
  XATSHOME: string
) : void =
  "ext#libxatsopt_the_preludes_load"
extern
fun
the_preludes_load_if
(
  XATSHOME: string, flag: &int
) : void =
  "ext#libxatsopt_the_preludes_load_if"
//
(* ****** ****** *)
//
datatype
waitknd =
  | WTKnone of ()
  | WTKoutput of () // -o ...
  | WTKinpsta of () // -s ...
  | WTKinpdyn of () // -d ...
  | WTKdefine of () // -DATS ...
  | WTKinpath of () // -IATS ...
// end of [waitkind]
//
fun
waitknd_get_stadyn
(knd: waitknd): int =
(
case+ knd of
| WTKinpsta() => 0
| WTKinpdyn() => 1
| _ (*rest-of-WTK*) => ~1
) // end of [waitkind_get_stadyn]
//
(* ****** ****** *)
//
datatype
outchan =
| OUTCHANref of (FILEref)
| OUTCHANptr of (FILEref)
// end of [outchan]

fun
outchan_get_filref
  (x0: outchan): FILEref =
(
case+ x0 of
| OUTCHANref(filr) => filr
| OUTCHANptr(filr) => filr
) (* end of [outchan_get_filref] *)
//
(* ****** ****** *)
//
typedef
cmdstate = @{
//
arg0= commarg
,
wtk0= waitknd
,
ATSHOME= string
,
prelude= int
,
inpfil0=fpath_t
,
// the number of inputs
ninpfil= int // processed
//
, outmode= fmode
, outchan= outchan
//
// the number of caught
, nxerror= int // errors
//
} (* end of [cmdstate] *)
//
(* ****** ****** *)
//
fun
isinpwait
(
  st0: cmdstate
) : bool =
(
case+
st0.wtk0
of // case+
 | WTKinpsta() => true
 | WTKinpdyn() => true
(*
 | WTKinpdyns() => true
*)
 | _ (*non-WTKinput*) => false
) // end of [isinpwait]

fun
isoutwait
  (st0: cmdstate): bool =
(
case+
st0.wtk0 of
| WTKoutput() => true
| _(*non-WTKoutput*) => false
) (* end of [isoutwait] *)

fun
isdatswait
  (st0: cmdstate): bool =
(
case+
st0.wtk0 of
| WTKdefine() => true
| _(*non-WTKdefine*) => false
) (* end of [isdatswait] *)

fun
isiatswait
  (st0: cmdstate): bool =
(
case+
st0.wtk0 of
| WTKinpath() => true
| _(*non-WTKinpath*) => false
) (* end of [isiatswait] *)
//
(* ****** ****** *)

local

extern
praxi
vbox_make_view_ptr
{a:vt0ype}{l:addr}
// statically allocated reference
(a @ l | ptr(l)):<> vbox(a @ l)

var
theOutFname: Stropt = stropt_none()
//
prval pf0 =
vbox_make_view_ptr
{Stropt}{..}
(view@theOutFname | addr@theOutFname)
// end of [val]

in (* in-of-local *)

fun
theOutFname_get
(
// argless
) : Stropt = out where
{
//
prval vbox(pf) = pf0
//
  val out = theOutFname
//
  val ((*void*)) =
  theOutFname := stropt_none()
//
} // end of [theOutFname_get]

fun
theOutFname_set
 (fname: Stropt) = () where
{
//
prval vbox(pf) = pf0
//
  val () = theOutFname := fname
//
} // end of [theOutFname_set]

end // end of [local]

(* ****** ****** *)

fun
cmdstate_set_outchan
(
st0: &cmdstate >> _, out1: outchan
) : void = let
  val out0 = st0.outchan
  val ((*void*)) = st0.outchan := out1
in
//
case+ out0 of
| OUTCHANref _ => ()
| OUTCHANptr(filr) => let
    val err = $STDIO.fclose0(filr) in (*nothing*)
  end // end of [OUTCHANptr]
//
end // end of [cmdstate_set_outchan]

(* ****** ****** *)
//
extern
fun
outchan_make_fname
( st0
: &cmdstate, fname: string
) : outchan // end-of-fun
implement
outchan_make_fname
  (st0, fname) =
(
case+ fname of
| "-" => OUTCHANref(stdout_ref)
//
| _(*unspecial*) => auxmain(st0, fname)
//
) where
{
fun
auxmain
( st0
: &cmdstate, fname: string
) : outchan = let
//
val
filp =
$STDIO.fopen(fname, st0.outmode)
//
in
//
if
$STDIO.iseqz(filp)
then
(
  OUTCHANref(stderr_ref)
) where
{
prval () =
$STDIO.FILEptr_free_null(filp)
} (* end of [then] *)
else
(
  OUTCHANptr
  ($UN.castvwtp0{FILEref}(filp))
) (* end of [else] *)
//
end // end of [auxmain]
//
} (* end of [outchan_make_path] *)

(* ****** ****** *)
//
extern
fun
xatsopt_commarg_warning
  (out: FILEref, arg: string): void
implement
xatsopt_commarg_warning
  (out, arg) = () where
{
//
val () =
fprint(out, "WARNING(ATS)")
val () =
fprintln!
( out
, ": unrecognized command-line argument [", arg, "] is skipped."
) (* end of [val] *)
//
} (* end of [xatsopt_commarg_warning] *)
//
(* ****** ****** *)

local
//
static
fun
process_stdin
(st0: &cmdstate >> _): void
static
fun
process_fpath
( st0
: &cmdstate >> _, fp0: fpath_t): void
static
fun
process_given
( st0
: &cmdstate >> _, given: string): void
//
static
fun
process_cmdline
  {n:nat}
( st0: &cmdstate >> _
, args: commarglst(n)): void
and
process_cmdline2
  {n:nat}
( st0: &cmdstate >> _
, arg0: commarg, args: commarglst(n)): void
//
implement
process_stdin
  (st0) =
(
process_fpath(st0, fp0)
) where
{
  val
  fp0 = $FP0.the_filpath_stdin
}
implement
process_fpath
  (st0, fp0) = let
//
val
wtk0 = st0.wtk0
val
stadyn =
waitknd_get_stadyn(wtk0)
//
val
XATSHOME = st0.ATSHOME
//
val () =
ifcase
|
$FP0.filpath_is_stdin(fp0) =>
$FP0.the_dirpathlst_ppush_cwd()
| _ (* regular filename *) =>
let
val
dp0 =
$FP0.dirpath_make
($FP0.filpath_get_dirname(fp0))
val () =
let
val out = stdout_ref
in
fprint(out, "dirpath = ");
$FP0.fprintln_dirpath(out, dp0)
end
in
  $FP0.the_filpathlst_ppush(fp0);
  $FP0.the_dirpathlst_ppush(dp0)
end (* let *) // end of [ifcase]
//
in
//
if
(
stadyn >= 0
)
then
{
//
val () =
the_preludes_load_if
(XATSHOME, st0.prelude)
// end of [val]
//
val () = (st0.inpfil0 := fp0)
val
(pf0 | ()) =
$FP0.the_filpathlst_push(fp0)
val
d0cs =
let
val opt =
parse_from_filpath_toplevel
  (stadyn, fp0)
in
case+ opt of
| ~Some_vt(d0cs) => d0cs
| ~None_vt((*void*)) => list_nil()
end : d0eclist // end-of-val
//
prval () = $UN.castview0{void}(pf0)
(*
val ((*popped*)) = $FP0.the_filpathlst_pout(pf0 | (* none *))
*)
//
(*
val () = println!("process_fpath: d0cs = ", d0cs)
*)

//
reassume ret_list_type_t
#staload _ = "{$XARGS}/DATS/dynexp0.dats"
//

val () = synread_main(d0cs)
//
(*
val d1cs = trans01_declist(d0cs)
*)
val
d1cs =
let
val
d1cs = trans01_declist(d0cs)
in
d1cs where
{
  val () = tread01_main(d1cs)
}
end // end of [val]
(*
val () = println!("process_fpath: d1cs = ", d1cs)
*)
//
(* val () = extn(d1cs) *)
//
(*
val () = t1xread_main(d1cs)
//
val
d2cs = trans12_declist(d1cs)
*)
//
val
d2cs =
let
val
d2cs = trans12_declist(d1cs)
in
d2cs where
{
  val () = tread12_main(d2cs)
}
end // end of [val]
//
(*
val () = extn(d2cs)
*)
//
(*
val () = println!("process_fpath: d2cs = ", d2cs)
*)
//
(*
val () = t2xread_main(d2cs)
//
val d3cs = trans23_declist(d2cs)
*)
//
val
d3cs =
let
val
d3cs = trans23_declist(d2cs)
in
d3cs where
{
(*
  val () = tread23_main(d3cs)
*)
}
end // end of [val]
//
(*
val () = extn(d3cs)
*)
//
(*
val () = println!("process_fpath: d3cs = ", d3cs)
*)
(*
val d3cs = trans33_declist(d3cs)
*)
//
(* val () = println!("SHOW") *)
val () = println!("\n", "d0ecl")
(*
val () = (
  list_foreach<d0ecl>(d0cs) where
    implement(env)
    list_foreach$fwork<d0ecl><env>(x, env) =
    {
        val x0 = schema(x)
        // val () = println!("name= ", x0.name, " args= ", x0.args)
        val () = println!(x0)
    }
  end
)
*)
val () = to_schema_tag_foreach<d0ecl>(d0cs)

val () = println!("\n", "d1ecl")
val () = (
  list_foreach<d1ecl>(d1cs) where
    implement(env)
    list_foreach$fwork<d1ecl><env>(x, env) =
    {
        val x0 = schema(x)
        val () = println!(x0)
    }
  end
)
val () = println!("\n", "d2ecl")
val () = (
  list_foreach<d2ecl>(d2cs) where
    implement(env)
    list_foreach$fwork<d2ecl><env>(x, env) =
    {
        val x0 = schema(x)
        val () = println!(x0)
    }
  end
)
val () = println!("\n", "d3ecl")
val () = (
  list_foreach<d3ecl>(d3cs) where
    implement(env)
    list_foreach$fwork<d3ecl><env>(x, env) =
    {
        val x0 = schema(x)
        val () = println!(x0)
    }
  end
)

(*
val
d3cs =
let
val
d3cs = trans33_declist(d3cs)
in
d3cs where
{
  val () = tread33_main(d3cs)
}
end // end of [val]
//
(*
val () = extn(d3cs)
*)
//
(*
val () = println!("process_fpath: d3cs = ", d3cs)
*)
(* val () = t3xread_main(d3cs) *)
//
val
d3cs = trans3t_program(d3cs)
//
(*
val () = extn(d3cs)
*)
//
(*
val ((*void*)) = the_sortenv_popfree(__assert__() | (*void*))
val ((*void*)) = the_sexpenv_popfree(__assert__() | (*void*))
val ((*void*)) = the_dexpenv_popfree(__assert__() | (*void*))
(* end // end of [local] *)
*)
(*
(*
val () =
println!("process_fpath: d3cs = ", d3cs)
*)
//
val () = println!("process_fpath: the_sortenv:")
val () = the_sortenv_println((*void*))
//
val () = println!("process_fpath: the_sexpenv:")
val () = (the_sexpenv_println((*void*)))
//
val () = println!("process_fpath: the_dexpenv:")
val () = (the_dexpenv_println((*void*)))
//
(*
val irdcls = irerase_declist(d3cs)
val () = println!("process_fpath: irdcls = ", irdcls)
*)
//
val () = fprint_newline(stdout_ref)
*)
//
*)
} (* end of [then] *)
else
{
// ~(stadyn >= 0) // not for loading code
} (* end of [else] *)
//
end // end of [process_fpath]
//
implement
process_given
  (st0, arg0) = let
//
val fp0 =
let
val given = arg0
val fname = arg0
in
fpath_make(given, fname)
end
//
(*
val () = println!("process_given: arg0 = ", arg0)
*)
//
in
  process_fpath(st0, fp0)
end // end of [process_given]
//
implement
process_cmdline
  (st0, args) = let
in
//
case+ args of
//
| list_nil() =>
  (
    if
    st0.ninpfil = 0
    then process_stdin(st0) else ()
  )
//
| list_cons
    (arg0, args) =>
  (
    process_cmdline2(st0, arg0, args)
  )
//
end // end of [process_cmdline]
//
implement
process_cmdline2
  (st0, arg0, args) = let
//
(*
val () = println!("process_cmdline2: arg0 = ", arg0)
*)
//
fun
auxkey1
( st0:
 &cmdstate >> _
, key: string): void = let
//
val () =
(st0.wtk0 := WTKnone())
//
val () =
(
case+ key of
//
| "-o" =>
  {
    val () =
    (st0.wtk0 := WTKoutput())
  } (* end of [-o] *)
| "-s" =>
  {
    val () =
    (st0.ninpfil := 0)
    val () =
    (st0.wtk0 := WTKinpsta())
  } (* end of [-s] *)
| "-d" =>
  {
    val () =
    (st0.ninpfil := 0)
    val () =
    (st0.wtk0 := WTKinpdyn())
  } (* end of [-d] *)
(*
| "-dd" =>
  {
    val () =
    (st0.ninpfil := 0)
    val () =
    (st0.waitknd := WTKinpdyns())
  } (* end of [-dd] *)
*)
//
(*
| "-cc" => (st0.tcflag := 0)
| "-tc" => (st0.tcflag := 1)
*)
//
(*
| "-dep" => (st0.depgen := 1)
| "-tag" => (st0.taggen := 1)
*)
//
(*
| _ when
    is_DATS_flag(key) => let
    val def = DATS_extract(key)
    val issome = stropt_is_some(def)
  in
    if
    issome
    then
    (
      process_DATS_def(def) where
      {
        val def = stropt_unsome(def)
      }
    )
    else let
      val () =
        (st0.wtk0 := WTKdefine(*void*))
      // end of [val]
    in
      // nothing
    end // end of [else] // end of [if]
  end // end of [is_DATS_flag]
*)
(*
| _ when
    is_IATS_flag(key) => let
    val path = IATS_extract(key)
    val issome = stropt_is_some(path)
  in
    if
    issome
    then
    (
      process_IATS_dir(path) where
      {
        val path = stropt_unsome(path)
      }
    )
    else let
      val () =
        (st0.wtk0 := WTKinclude(*void*))
      // end of [val]
    in
        // nothing
    end // end of [else] // end of [if]
  end // end of [is_IATS_flag]
*)
//
| "-h" =>
  (
    xatsopt_usage
      (stdout_ref, st0.arg0)
    // xatsopt_usage
  )
| "-v" =>
  (
    xatsopt_version(stdout_ref)
  )
//
| _ (*rest*) =>
  ( //
    // HX: unrecognized key
    //
    xatsopt_commarg_warning(stderr_ref, key)
  ) (* end of [rest] *)
//
) : void // end of [val]
//
in
  process_cmdline(st0, args)
end // end of [auxkey1]
//
fun
auxkey2
( st0:
 &cmdstate >> _
, key: string): void = let
//
val () =
  (st0.wtk0 := WTKnone())
//
val () =
(
case+ key of
//
| "--output" =>
  (
    st0.wtk0 := WTKoutput()
  )
| "--output-w" =>
  {
    val () = st0.wtk0 := WTKoutput()
    val () = st0.outmode := file_mode_w
  } // end of [--output-w]
| "--output-a" =>
  {
    val () = st0.wtk0 := WTKoutput()
    val () = st0.outmode := file_mode_a
  } // end of [--output-a]
//
| "--static" =>
  {
    val () = st0.wtk0 := WTKinpsta()
  } // end of [--static]
| "--dynamic" =>
  {
    val () = st0.wtk0 := WTKinpdyn()
  } // end of [--dynamic]
//
(*
| "--dynamics" =>
  {
    val () = st0.wtk0 := WTKinpdyns()
  } // end of [--dynamics]
*)
//
(*
| "--compile" => (st0.tycheckflag := 0)
| "--tycheck" => (st0.tycheckflag := 1)
*)
//
(*
| "--gline" =>
  {
    val () =
    $GLOB.the_DEBUGATS_dbgline_set(1)
  } // end of [--gline] // mostly for debugging
*)
//
(*
| "--debug1" =>
  {
    val () = debug_flag_set(1)
  } // end of [--debug] // more informative errmsgs
| "--debug2" => {
    val () = debug_flag_set(1)
    val () = $GLOB.the_DEBUGATS_dbgflag_set(1)
  } // end of [--debug2] // for generating debugging info
*)
//
(*
| "--depgen" => (st0.depgen := 1)
| "--taggen" => (st0.taggen := 1)
*)
//
(*
| "--codegen-2" =>
  {
    val () = st0.codegen2 := 2
  }
| "--jsonize-2" =>
  {
    val () = st0.jsonize2 := 2
  }
*)
//
(*
| "--no-tailcallopt" =>
  {
    val () =
    $GLOB.the_CCOMPATS_tailcallopt_set(0)
  }
*)
//
(*
| "--constraint-export" =>
  {
    val () = st0.constraint := 1
  }
| "--constraint-ignore" =>
  {
    val () = st0.constraint := ~1
  }
*)
//
| "--help" =>
  (
    xatsopt_usage
      (stdout_ref, st0.arg0)
    // xatsopt_usage
  )
| "--version" =>
  (
    xatsopt_version(stdout_ref)
  )
//
| _ (*rest-of-key2*) =>
  ( //
    // HX: unrecognized key
    //
    xatsopt_commarg_warning(stderr_ref, key)
  ) (* end of [rest-of-key2] *)
//
) : void // end of [val]
//
in
  process_cmdline(st0, args)
end // end of [auxkey2]
//
in
//
case+ arg0 of
| _ when
    isinpwait(st0) => let
    val
    stadyn =
    waitknd_get_stadyn(st0.wtk0)
    val nif = st0.ninpfil
  in
    case+ arg0 of
//
    | COMMARG(1, key)
        when nif > 0 =>
      (
        auxkey1(st0, key)
      )
    | COMMARG(2, key)
        when nif > 0 =>
      (
        auxkey2(st0, key)
      )
//
    | COMMARG(_, "-") =>
      (
      process_cmdline(st0, args)
      ) where
      {
        val () =
        (st0.ninpfil := nif+1)
        val () = process_stdin(st0)
      } (* end of [COMMARG(_,-)] *)
//
    | COMMARG(_, given) =>
      (
      process_cmdline(st0, args)
      ) where
      {
        val () =
        (st0.ninpfil := nif+1)
        val () =
        (
          process_given(st0, given)
        )
      } (* end of [COMMARG(_,_)] *)
  end // end of [isinpwait]
//
| _ when
    isoutwait(st0) => let
    val () =
    st0.wtk0 := WTKnone()
//
    val+COMMARG(_, given) = arg0
//
    val ((*void*)) =
    (
      theOutFname_set(opt)
    ) where
    {
      val opt = stropt_some(given)
    }
//
    val _new_ =
    outchan_make_fname(st0, given)
    val ((*void*)) =
    cmdstate_set_outchan(st0, _new_)
//
  in
    process_cmdline(st0, args)
  end // end of [_ when isoutwait]
//
| COMMARG(1, key) => auxkey1(st0, key)
| COMMARG(2, key) => auxkey2(st0, key)
//
| COMMARG(_, key) =>
  (
    process_cmdline(st0, args)
  ) where
  {
    val () =
    st0.wtk0 := WTKnone()
    val () =
    xatsopt_commarg_warning(stderr_ref, key)
  } (* end of [COMMARG] *)
//
end // end of [process_cmdline2]
//
in (* in-of-local *)

fun test_schema(): void =
{
#include "./ALL.dats"

(*
macdef showopt(nm, lst) =
  println!("\n", ,(nm), "\n", schema(,(lst))) where
    implement scm$opt<>() = true end
*)


val () =
{
(*
val () = println!("\n", "dummy_dctkind")
val () = println!(schema(dummy_dctkind))
(* dctkinds *)
(* val () = schema_foreach<dctkind>(dctkinds) *)
val () = println!("\n", "dctkinds")
val () = to_schema_tag_foreach<dctkind>(dctkinds)
*)
(*
val () = println!("\n\n", "************* LOCATION", "\n")

val () = println!("\n", "location")
val () = println!(schema_location(dummy_loc))
*)

val () = println!("\n\n", "************* SYMBOL", "\n")

val () = println!("\n", "symbol")
val () = println!(schema_symbol(dummy_symbol))


val () = println!("\n\n", "************* LABEL", "\n")

val () = println!("\n", "labels")
(* val () = println!(schema_tag_label(dummy_label)) *)
val () = to_schema_tag_foreach<label>(labels)

val () = println!("\n\n", "************* BASICS", "\n")

(* dummy_valkind *)
(* valkinds *)

val () = println!("\n", "valkinds")
val () = to_schema_tag_foreach<valkind>(valkinds)


(* dummy_funkind *)
(* funkinds *)
val () = println!("\n", "funkinds")
val () = to_schema_tag_foreach<funkind>(funkinds)


(* dummy_impkind *)
(* impkinds *)
val () = println!("\n", "impkinds")
val () = to_schema_tag_foreach<impkind>(impkinds)


(* dummy_funclo2 *)
(* funclo2s *)
val () = println!("\n", "funclo2s")
val () = to_schema_tag_foreach<funclo2>(funclo2s)


val () = println!("\n\n", "************* LEXING", "\n")


val () = println!("\n", "tnodes")
val () = to_schema_tag_foreach<tnode>(tnodes)

val () = println!("\n", "token", "\n", schema(dummy_token))
val () = println!("\n", "tokenopt", "\n", schema(dummy_tokenopt))
  where implement scm$opt<>() = true end

(*
val () = println!("\n", "tnodes")
val () = to_schema_tag_foreach<tnode>(tnodes)
*)
val () = println!("\n\n", "************* STAEXP0", "\n")


(*
val () = println!("\n", "s0exps")
val () = to_schema_tag_foreach<s0exp_node>(s0exps)
*)

val () =
(
println!("\n", "g0explst", "\n", schema(dummy_g0explst));
println!("\n", "sort0lst", "\n", schema(dummy_sort0lst));
println!("\n", "s0rtconlst", "\n", schema(dummy_s0rtconlst));
println!("\n", "d0tsortlst", "\n", schema(dummy_d0tsortlst));
println!("\n", "s0arglst", "\n", schema(dummy_s0arglst));
println!("\n", "s0marglst", "\n", schema(dummy_s0marglst));
println!("\n", "t0arglst", "\n", schema(dummy_t0arglst));
println!("\n", "t0marglst", "\n", schema(dummy_t0marglst));
println!("\n", "s0qualst", "\n", schema(dummy_s0qualst));
println!("\n", "s0unilst", "\n", schema(dummy_s0unilst));
println!("\n", "s0explst", "\n", schema(dummy_s0explst));
println!("\n", "d0atconlst", "\n", schema(dummy_d0atconlst))
)
where implement scm$lst<>() = true end

val () =
(
println!("\n", "s0expopt", "\n", schema(dummy_s0expopt))
)
where implement scm$opt<>() = true end

(*
dummy_t0int
t0ints
*)
val () = println!("\n", "t0ints")
val () = to_schema_tag_foreach<t0int_node>(t0ints)
(*
dummy_t0chr
t0chrs
*)
val () = println!("\n", "t0chrs")
val () = to_schema_tag_foreach<t0chr_node>(t0chrs)
(*
dummy_t0flt
t0flts
*)
val () = println!("\n", "t0flts")
val () = to_schema_tag_foreach<t0flt_node>(t0flts)
(*
dummy_t0str
t0strs
*)
val () = println!("\n", "t0strs")
val () = to_schema_tag_foreach<t0str_node>(t0strs)
(*
dummy_i0dnt
dummy_i0dntlst
i0dnts
*)
val () = println!("\n", "i0dnts")
val () = to_schema_tag_foreach<i0dnt_node>(i0dnts)
(*
(* dummy_g0eid *)
(* dummy_s0tid *)
(* dummy_s0eid *)
(* dummy_d0pid *)
(* dummy_d0eid *)
*)
(*
dummy_l0abl
l0abls
*)
val () = println!("\n", "l0abls")
val () = to_schema_tag_foreach<l0abl_node>(l0abls)
(*
dummy_s0ymb
s0ymbs
*)
val () = println!("\n", "s0ymbs")
val () = to_schema_tag_foreach<s0ymb_node>(s0ymbs)
(*
dummy_sq0eid
sq0eids
*)
val () = println!("\n", "sq0eids")
val () = to_schema_tag_foreach<sq0eid>(sq0eids)
(*
dummy_dq0eid
dq0eids
*)
val () = println!("\n", "dq0eids")
val () = to_schema_tag_foreach<dq0eid>(dq0eids)
(*
dummy_g0exp
dummy_g0explst
g0exps
*)
val () = println!("\n", "g0exps")
val () = to_schema_tag_foreach<g0exp_node>(g0exps)
(*
dummy_g0arg
dummy_g0arglst
*)

(*
dummy_g0marg
g0margs
*)
val () = println!("\n", "g0margs")
val () = to_schema_tag_foreach<g0marg_node>(g0margs)
(*
dummy_sort0
dummy_sort0lst
dummy_sort0opt
sort0s
*)
val () = println!("\n", "sort0s")
val () = to_schema_tag_foreach<sort0_node>(sort0s)
//
(*
dummy_s0rtcon
dummy_s0rtconlst
s0rtcons
*)
val () = println!("\n", "s0rtcons")
val () = to_schema_tag_foreach<s0rtcon_node>(s0rtcons)
//
(*
dummy_d0tsort
dummy_d0tsortlst
d0tsorts
*)
val () = println!("\n", "d0tsorts")
val () = to_schema_tag_foreach<d0tsort_node>(d0tsorts)
//
(*
dummy_s0rtdef
s0rtdefs
*)
val () = println!("\n", "s0rtdefs")
val () = to_schema_tag_foreach<s0rtdef_node>(s0rtdefs)
(*
dummy_s0arg
dummy_s0arglst
s0args
*)
val () = println!("\n", "s0args")
val () = to_schema_tag_foreach<s0arg_node>(s0args)
//
(*
dummy_s0marg
dummy_s0marglst
s0margs
*)
val () = println!("\n", "s0margs")
val () = to_schema_tag_foreach<s0marg_node>(s0margs)
//
(*
dummy_t0arg
dummy_t0arglst
t0args
*)
val () = println!("\n", "t0args")
val () = to_schema_tag_foreach<t0arg_node>(t0args)
//
(*
dummy_t0marg
dummy_t0marglst
t0margs
*)
val () = println!("\n", "t0margs")
val () = to_schema_tag_foreach<t0marg_node>(t0margs)
//
(*
dummy_s0qua
dummy_s0qualst
s0quas
*)
val () = println!("\n", "s0quas")
val () = to_schema_tag_foreach<s0qua_node>(s0quas)
//
(*
dummy_s0uni
dummy_s0unilst
s0unis
*)
val () = println!("\n", "s0unis")
val () = to_schema_tag_foreach<s0uni_node>(s0unis)
//
(*
dummy_s0exp
dummy_s0explst
dummy_s0expopt
s0exps
*)
val () = println!("\n", "s0exps")
val () = to_schema_tag_foreach<s0exp_node>(s0exps)
//
//
(*
dummy_s0exp_RPAREN
s0exp_RPARENs
*)
val () = println!("\n", "s0exp_RPARENs")
val () = to_schema_tag_foreach<s0exp_RPAREN>(s0exp_RPARENs)

(*
dummy_labs0exp_RBRACE
labs0exp_RBRACEs
*)
val () = println!("\n", "labs0exp_RBRACEs")
val () = to_schema_tag_foreach<labs0exp_RBRACE>(labs0exp_RBRACEs)

(*
dummy_effs0expopt
effs0expopts
*)
val () = println!("\n", "effs0expopts")
val () = to_schema_tag_foreach<effs0expopt>(effs0expopts)

(*
dummy_d0atcon
dummy_d0atconlst
d0atcons
*)
val () = println!("\n", "d0atcons")
val () = to_schema_tag_foreach<d0atcon_node>(d0atcons)
//
//
(*
dummy_d0atype
d0atypes
*)
val () = println!("\n", "d0atypes")
val () = to_schema_tag_foreach<d0atype_node>(d0atypes)


val () = println!("\n\n", "************* DYNEXP0", "\n")

(*
val () = println!("\n", "d0exps")
val () = to_schema_tag_foreach<d0exp_node>(d0exps)

val () = println!("\n", "d0claulst", "\n", schema(dummy_d0claulst))
*)


val () =
(
println!("\n", "q0arglst", "\n", schema(dummy_q0arglst));
println!("\n", "sq0arglst", "\n", schema(dummy_sq0arglst));
println!("\n", "ti0arglst", "\n", schema(dummy_ti0arglst));
println!("\n", "a0typlst", "\n", schema(dummy_a0typlst));
println!("\n", "q0arglst", "\n", schema(dummy_q0arglst));
println!("\n", "f0arglst", "\n", schema(dummy_f0arglst));
println!("\n", "d0patlst", "\n", schema(dummy_d0patlst));
println!("\n", "labd0patlst", "\n", schema(dummy_labd0patlst));
println!("\n", "d0explst", "\n", schema(dummy_d0explst));
println!("\n", "d0gualst", "\n", schema(dummy_d0gualst));
println!("\n", "d0patlst", "\n", schema(dummy_d0patlst));
println!("\n", "d0claulst", "\n", schema(dummy_d0claulst));
println!("\n", "v0aldeclist", "\n", schema(dummy_v0aldeclist));
println!("\n", "v0ardeclist", "\n", schema(dummy_v0ardeclist));
println!("\n", "f0undeclist", "\n", schema(dummy_f0undeclist));
println!("\n", "d0cstdeclist", "\n", schema(dummy_d0cstdeclist));
println!("\n", "d0eclist", "\n", schema(dummy_d0eclist))

)
where implement scm$lst<>() = true end


val () =
(
println!("\n", "a0typopt", "\n", schema(dummy_a0typopt));
println!("\n", "a0typlstopt", "\n", schema(dummy_a0typlstopt));
println!("\n", "d0expopt", "\n", schema(dummy_d0expopt))
)
where implement scm$opt<>() = true end

fun{a:type}
showlst(str: string, x: List0(a)): void =
(
  println!("\n", str);
  to_schema_tag_foreach<a>(x)
)

#define quo "\""

fun{a:type}
showlst2(str:string, xs0: List0(a)): void =
{
  val xs = mapto_schema_tag<a>(xs0)

  val () = print!("{", " ", quo,  str, quo, ":", " ", "[")
  val () = scmrec_foreach<>(xs) where
    implement
    scmrec_foreach$sep<>() = print!(",")
    implement
    scmrec_foreach$fwork<>(x) = print!(x)
  end

  val () = println!("]", " ", "}")
}

fun{a:type}
showlst2(str:string, xs0: List0(a)): void =
{
  val xs = mapto_schema_tag<a>(xs0)

  val () = print!("{", " ", quo,  str, quo, ":", " ", "[")
  val () = scmrec_foreach<>(xs) where
    implement
    scmrec_foreach$sep<>() = print!(",")
    implement
    scmrec_foreach$fwork<>(x) = print!(x)
  end

  val () = println!("]", " ", "}")
}

(*
dummy_q0arglst
dummy_q0arg
*)
(*
val () = println!("\n", "q0args")
val () = to_schema_tag_foreach<q0arg_node>(q0args)
*)
val () = println!("\n", schema(dummy_q0arg))
//
val () = showlst<q0arg_node>("q0arg_node", q0args)
//
(*
dummy_sq0arglst
dummy_sq0arg
sq0args
*)
val () = println!("\n", schema(dummy_sq0arg))
//
val () = showlst<sq0arg_node>("sq0arg_node", sq0args)
(*
dummy_tq0arg
dummy_tq0arglst
tq0args
*)
val () = println!("\n", schema(dummy_tq0arg))
//
val () = showlst<tq0arg_node>("tq0arg_node", tq0args)
(*
dummy_ti0arglst
dummy_ti0arg
ti0args
*)
val () = println!("\n", schema(dummy_ti0arg))
//
val () = showlst<ti0arg_node>("ti0arg_node", ti0args)
(*
dummy_a0typlst
dummy_a0typopt
dummy_a0typlstopt
dummy_a0typ
a0typs
*)
val () = println!("\n", schema(dummy_a0typ))
//
val () = showlst<a0typ_node>("a0typ_node", a0typs)
(*
dummy_d0arglst
dummy_d0arg
d0args
*)
val () = println!("\n", schema(dummy_d0arg))
//
val () = showlst<d0arg_node>("d0arg_node", d0args)
(*
dummy_f0arglst
dummy_f0arg
f0args
*)
val () = println!("\n", schema(dummy_f0arg))
//
val () = showlst<f0arg_node>("f0arg_node", f0args)
(*
dummy_labd0pat_RBRACE
labd0pat_RBRACEs
*)
val () = showlst<labd0pat_RBRACE>("labd0pat_RBRACE", labd0pat_RBRACEs)
(*
dummy_d0pat_RPAREN
d0pat_RPARENs
*)
val () = showlst<d0pat_RPAREN>("d0pat_RPAREN", d0pat_RPARENs)
(*
dummy_d0patlst
dummy_d0pat
d0pats
*)
val () = println!("\n", schema(dummy_d0pat))
//
val () = showlst<d0pat_node>("d0pat_node", d0pats)
(*
dummy_labd0patlst
dummy_labd0pat
*)
//
(*
dummy_d0exp_RPAREN
d0exp_RPARENs
*)
val () = showlst<d0exp_RPAREN>("d0exp_RPAREN", d0exp_RPARENs)
(*
dummy_labd0exp_RBRACE
labd0exp_RBRACEs
*)
val () = showlst<labd0exp_RBRACE>("labd0exp_RBRACE", labd0exp_RBRACEs)
(*
dummy_d0exp_THEN
d0exp_THENs
*)
val () = showlst<d0exp_THEN>("d0exp_THEN", d0exp_THENs)
(*
dummy_d0exp_ELSE
d0exp_ELSEs
*)
val () = showlst<d0exp_ELSE>("d0exp_ELSE", d0exp_ELSEs)
(*
dummy_endwhere
endwheres
*)
val () = showlst<endwhere>("endwhere", endwheres)
(*
dummy_d0eclseq_WHERE
d0eclseq_WHEREs
*)
val () = showlst<d0eclseq_WHERE>("d0eclseq_WHERE", d0eclseq_WHEREs)
(*
dummy_f0unarrow
f0unarrows
*)
val () = showlst<f0unarrow>("f0unarrow", f0unarrows)
(*
dummy_d0explst
dummy_d0expopt
dummy_d0exp
d0exps
*)
val () = println!("\n", schema(dummy_d0exp))
//
val () = showlst<d0exp_node>("d0exp_node", d0exps)
(*
dummy_labd0explst
dummy_labd0exp
*)
//
(*
dummy_d0gualst
dummy_d0gua
d0guas
*)
val () = println!("\n", schema(dummy_d0gua))
//
val () = showlst<d0gua_node>("d0gua_node", d0guas)
(*
dummy_d0patlst
dummy_d0gpat
d0gpats
*)
val () = println!("\n", schema(dummy_d0gpat))
//
val () = showlst<d0gpat_node>("d0gpat_node", d0gpats)
(*
dummy_d0claulst
dummy_d0clau
d0claus
*)
val () = println!("\n", schema(dummy_d0clau))
//
val () = showlst<d0clau_node>("d0clau_node", d0claus)
(*
dummy_decmodopt
decmodopts
*)
val () = showlst<decmodopt>("decmodopt", decmodopts)
(*
dummy_teqd0expopt
teqd0expopts
*)
val () = showlst<teqd0expopt>("teqd0expopt", teqd0expopts)
(*
dummy_wths0expopt
wths0expopts
*)
val () = showlst<wths0expopt>("wths0expopt", wths0expopts)
(*
dummy_d0pidopt
*)
//
(*
dummy_v0aldecl
dummy_v0aldeclist
v0aldecls
*)
val () = showlst<v0aldecl>("v0aldecl", v0aldecls)
(*
dummy_v0ardecl
dummy_v0ardeclist
v0ardecls
*)
val () = showlst<v0ardecl>("v0ardecl", v0ardecls)
(*
dummy_f0undecl
dummy_f0undeclist
f0undecls
*)
val () = showlst<f0undecl>("f0undecl", f0undecls)
(*
dummy_d0cstdeclist
dummy_d0cstdecl
d0cstdecls
*)
val () = showlst<d0cstdecl>("d0cstdecl", d0cstdecls)
(*
dummy_signint
signints
*)
val () = showlst<signint>("signint", signints)
(*
dummy_precmod
precmods
*)
val () = showlst<precmod>("precmod", precmods)
(*
dummy_precopt
precopts
*)
val () = showlst<precopt>("precopt", precopts)
(*
dummy_abstdf0
abstdf0s
*)
val () = showlst<abstdf0>("abstdf0", abstdf0s)
(*
dummy_g0expdef
g0expdefs
*)
(* val () = showlst<g0expdef>("g0expdef", g0expdefs) *)
val scm_tmp = make<g0expdef>("g0expdef", g0expdefs)
val () = println!(scm_tmp)
(*
dummy_d0macdef
d0macdefs
*)
(* val () = showlst<d0macdef>("d0macdef", d0macdefs) *)
val scm_tmp = make<d0macdef>("d0macdef", d0macdefs)
val () = println!(scm_tmp)
(*
dummy_wd0eclseq
wd0eclseqs
*)
(* val () = println!("\n", schema(dummy_wd0eclseq)) *)
//
(* val () = showlst<wd0eclseq>("wd0eclseq", wd0eclseqs) *)
val scm_tmp = make<wd0eclseq>("wd0eclseq", wd0eclseqs)
val () = println!(scm_tmp)
(*
dummy_d0eclist
dummy_d0ecl
d0ecls
*)
val () = println!("\n", schema(dummy_d0ecl))
val tmp = schema(dummy_d0ecl)
(* val scm_d0ecl = make_namedscm<d0ecl>("d0ecl", list_sing(dummy_d0ecl)) *)
(* val () = println!(scm_d0ecl) *)
//
(* val () = showlst<d0ecl_node>("d0ecl_node", d0ecls) *)
(* val () = showlst2<d0ecl_node>("d0ecl_node", d0ecls) *)
val scm_d0ecl_node = make<d0ecl_node>("d0ecl_node", d0ecls)
val () = println!(scm_d0ecl_node)


val scm_tmp = make<tnode>("tnode", tnodes)
val () = println!(scm_tmp)


}

(*
dummy_token
dummy_tokenopt
tnodes
*)
}

implement
schema0_main0
  (argc, argv) = //let
  test_schema()
(*

//
val
XATSHOME =
$GLO.the_XATSHOME_get((*void*))
//
val () =
$FP0.the_includes_push(XATSHOME)
//
val+
list_cons
(arg0, args) = args where
{
  val
  args =
  parse_commarglst(argc, argv)
} (* end of [val] *)
//
var
st0: cmdstate =
@{
  arg0= arg0
, wtk0= WTKnone()
//
, ATSHOME= XATSHOME
//
, prelude= 0(*~loaded*)
//
, inpfil0=
  $FP0.the_filpath_dummy
//
, ninpfil= 0(*initset*)
//
// load status of prelude files
//
, outmode= file_mode_w
, outchan= OUTCHANref(stdout_ref)
//
, nxerror= 0(*initset*)
//
} (* end of [var] *)
//
val () =
process_cmdline(st0, args)
//
in
//
if (st0.nxerror > 0) then $ERR.abort()
//
end // end of [xatsopt_main0]
*)

end // end of [local]

(* ****** ****** *)

(* end of [schema0.dats] *)
