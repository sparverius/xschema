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
#include
"share/atspre_staload.hats"
#staload
UN = "prelude/SATS/unsafe.sats"
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

#ifdef
_LIBXSCHEMA_
#then
#define
ATS_MAINATSFLAG 1
#define
ATS_DYNLOADNAME "libxschema_dynloadall"
#endif // #ifdef



#dynload "./schema.dats"
#dynload "./basics.dats"
#dynload "./stamp0.dats"
#dynload "./symbol.dats"
#dynload "./label0.dats"
#dynload "./locinfo.dats"
#dynload "./lexing_token.dats"
#dynload "./filpath.dats"
#dynload "./staexp0.dats"
#dynload "./dynexp0.dats"
#dynload "./staexp1.dats"
#dynload "./dynexp1.dats"
#dynload "./statyp2.dats"
#dynload "./staexp2.dats"
#dynload "./dynexp2.dats"
#dynload "./dynexp3.dats"
#dynload "./schema0.dats"
//
(* ****** ****** *)
//
#ifdef
_LIBXSCHEMA_
#then
#else
implement
main0(argc, argv) =
(
//
if
(argc >= 2)
then schema0_main0(argc, argv)
else prerrln! ("Hello from ATS3(xschema)!")
// end of [if]
) (* end of [main] *)
#endif // ifdef(_LIBXSCHEMA_)
//
(* ****** ****** *)

(* end of [xschema.dats] *)
