
:-(compiler_options([xpp_on,canonical])).

/********** Tabling and Trailer Control Variables ************/

#define EQUALITYnone
#define INHERITANCEflogic
#define TABLINGreactive
#define TABLINGvariant
#define CUSTOMnone

#define FLORA_INCREMENTAL_TABLING 

#define FLORA_NONTABLED_MODULE

#define FLORA_NONTABLED_DATA_MODULE

/************************************************************************
  file: headerinc/flrheader_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader.flh"
#include "flora_porting.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrheader_prog_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader_prog.flh"

/***********************************************************************/

#define FLORA_COMPILATION_ID 2

/************************************************************************
  file: headerinc/flrheader2_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
  It has files that must be included in the header and typically
  contain some Prolog statements. Such files cannot appear
  in flrheader.flh because flrheader.flh is included in various restricted
  contexts where Prolog statements are not allowed.

  NOT included in ADDED files (compiled for addition) -- only in LOADED
  ones and in trailers/patch
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

%% flora_tabling_methods is included here to affect preprocessing of
%% flrtable/flrhilogtable.flh dynamically
#include "flora_tabling_methods.flh"

/* note: inside flrtable.flh there are checks for FLORA_NONTABLED_DATA_MODULE
   that exclude tabling non-signature molecules
*/
#ifndef FLORA_NONTABLED_MODULE
#include "flrtable.flh"
#endif

/* if normal tabled module, then table hilog */
#if !defined(FLORA_NONTABLED_DATA_MODULE) && !defined(FLORA_NONTABLED_MODULE)
#include "flrhilogtable.flh"
#endif

#include "flrtable_always.flh"

#include "flrauxtables.flh"

%% include list of tabled predicates
#mode save
#mode nocomment "%"
#if defined(FLORA_FLT_FILENAME)
#include FLORA_FLT_FILENAME
#endif
#mode restore

/***********************************************************************/

/************************************************************************
  file: headerinc/flrdyna_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

#include "flrdyndeclare.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrindex_P_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrindex_P.flh"

/***********************************************************************/

#mode save
#mode nocomment "%"
#define FLORA_THIS_FILENAME  'flrio.flr'
#mode restore
/************************************************************************
  file: headerinc/flrdefinition_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrdefinition.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrtrailerregistry_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrtrailerregistry.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrrefreshtable_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrrefreshtable.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrdynamic_connectors_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrdynamic_connectors.flh"

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrimportedcalls_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

%% Loads the file with all the import statements for predicates
%% that must be known everywhere

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBIMPORTEDCALLS))).

/***********************************************************************/

/************************************************************************
  file: headerinc/flrpatch_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrexportcheck.flh"
#include "flrpatch.flh"
/***********************************************************************/

/************************************************************************
  file: headerinc/flropposes_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flropposes.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrhead_dispatch_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrhead_dispatch.flh"

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrerrhandler_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBERRHANDLER))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrexport_inc.flh

  Author(s): Vishal Chowdhary

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/
:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBEXPORT))).


/***********************************************************************/


/************************************************************************
  file: syslibinc/flrmetaops_inh.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif


?-(:(flrlibman,flora_load_library(FLLIBMETAOPS))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrdynmod_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBDYNMOD))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrmetaops_inh.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif


?-(:(flrlibman,flora_load_library(FLLIBMETAOPS))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrdynrule_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLSYSRULEUPDATE))).

/***********************************************************************/

/************************************************************************
  file: libinc/flrparse_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(':'(flrlibman,flora_load_system_module(FLSYSMODPARSE))).

/***********************************************************************/

/************************************************************************
  file: libinc/flrsystem_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(':'(flrlibman,flora_load_system_module(FLSYSMODSYSTEM))).

/***********************************************************************/

:-(dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(prolog_read_aux)),5),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(prolog_read_aux)),5)),opaque))).
:-(FLORA_THIS_WORKSPACE(prolog_read_aux)(_h53905,_h53907,_h53909,_h53911,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(prolog_read_aux))(_h53905,_h53907,_h53909,_h53911,FWContext)).
 
#if !defined(FLORA_FLM_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLM_FILENAME  'flrio.flm'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(flrio,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'flrio.fld'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLD_FILENAME,FLORA_THIS_MODULE_NAME,'fld'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FLD_FILENAME,FLORA_THIS_FLD_STORAGE))).
#endif

 
#if !defined(FLORA_FLS_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS_FILENAME  'flrio.fls'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS_FILENAME,FLORA_THIS_MODULE_NAME,'fls'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rules %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:-(fllibexport([[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar1,flapply(open,__newdontcarevar2,__newdontcarevar3),__newcontextvar6))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar7,flapply(open,__newdontcarevar8),__newdontcarevar9,__newcontextvar12))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar13,close,__newcontextvar16))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar17,flora_read,__newdontcarevar18,__newcontextvar21))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar22,ergo_read,__newdontcarevar23,__newcontextvar26))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar27,flapply(flora_read,__newdontcarevar28),__newdontcarevar29,__newcontextvar32))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar33,flapply(ergo_read,__newdontcarevar34),__newdontcarevar35,__newcontextvar38))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar39,prolog_read,__newdontcarevar40,__newcontextvar43))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar44,flapply(prolog_read,__newdontcarevar45),__newdontcarevar46,__newcontextvar49))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar50,flapply(write,__newdontcarevar51),__newcontextvar54))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar55,flapply(write,__newdontcarevar56,__newdontcarevar57),__newcontextvar60))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar61,flapply(writeln,__newdontcarevar62),__newcontextvar65))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar66,flapply(writeln,__newdontcarevar67,__newdontcarevar68),__newcontextvar71))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write,__newdontcarevar72,__newdontcarevar73,__newcontextvar76))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write,__newdontcarevar77,__newdontcarevar78,__newdontcarevar79,__newcontextvar82))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write,__newdontcarevar83,__newdontcarevar84,__newdontcarevar85,__newdontcarevar86,__newcontextvar89))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar90,flapply(fmt_write,__newdontcarevar91,__newdontcarevar92),__newcontextvar95))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar96,flapply(fmt_write,__newdontcarevar97,__newdontcarevar98,__newdontcarevar99),__newcontextvar102))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write_string,__newdontcarevar103,__newdontcarevar104,__newdontcarevar105,__newcontextvar108))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write_string,__newdontcarevar109,__newdontcarevar110,__newdontcarevar111,__newdontcarevar112,__newcontextvar115))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar116,flapply(fmt_read,__newdontcarevar117),__newdontcarevar118,__newcontextvar121))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar122,flapply(write_canonical,__newdontcarevar123),__newcontextvar126))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(write_canonical,__newdontcarevar127,__newcontextvar130))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar131,read_canonical,__newdontcarevar132,__newcontextvar135))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar136,flapply(readline,__newdontcarevar137),__newdontcarevar138,__newcontextvar141))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(write,__newdontcarevar142,__newcontextvar145))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(write,__newdontcarevar146,__newdontcarevar147,__newcontextvar150))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(write,__newdontcarevar151,__newdontcarevar152,__newdontcarevar153,__newcontextvar156))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(writeln,__newdontcarevar157,__newcontextvar160))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(writeln,__newdontcarevar161,__newdontcarevar162,__newcontextvar165))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(writeln,__newdontcarevar166,__newdontcarevar167,__newdontcarevar168,__newcontextvar171))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(nl,__newcontextvar174))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(nl,__newdontcarevar175,__newcontextvar178))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar179,see,__newcontextvar182))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(see,__newdontcarevar183,__newcontextvar186))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(seen,__newcontextvar189))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar190,seeing,__newcontextvar193))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(seeing,__newdontcarevar194,__newcontextvar197))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar198,tell,__newcontextvar201))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(tell,__newdontcarevar202,__newcontextvar205))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(told,__newcontextvar208))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar209,telling,__newcontextvar212))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^tblflapply)(telling,__newdontcarevar213,__newcontextvar216))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar217,flapply(exists,__newdontcarevar218),__newcontextvar221))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar222,flapply(isdir,__newdontcarevar223),__newcontextvar226))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar227,flapply(isplain,__newdontcarevar228),__newcontextvar231))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar232,flapply(readable,__newdontcarevar233),__newcontextvar236))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar237,flapply(writable,__newdontcarevar238),__newcontextvar241))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar242,flapply(executable,__newdontcarevar243),__newcontextvar246))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar247,flapply(modtime,__newdontcarevar248,__newdontcarevar249),__newcontextvar252))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar253,flapply(modtime,__newdontcarevar254),__newdontcarevar255,__newcontextvar258))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar259,flapply(mkdir,__newdontcarevar260),__newcontextvar263))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar264,flapply(rmdir,__newdontcarevar265),__newcontextvar268))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar269,flapply(chdir,__newdontcarevar270),__newcontextvar273))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar274,flapply(cwd,__newdontcarevar275),__newcontextvar278))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar279,cwd,__newdontcarevar280,__newcontextvar283))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar284,flapply(link,__newdontcarevar285,__newdontcarevar286),__newcontextvar289))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar290,flapply(unlink,__newdontcarevar291),__newcontextvar294))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar295,flapply(remove,__newdontcarevar296),__newcontextvar299))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar300,flapply(tmpfilename,__newdontcarevar301),__newcontextvar304))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar305,flapply(isabsolute,__newdontcarevar306),__newcontextvar309))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar310,flapply(rename,__newdontcarevar311,__newdontcarevar312),__newcontextvar315))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar316,flapply(basename,__newdontcarevar317,__newdontcarevar318),__newcontextvar321))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar322,flapply(basename,__newdontcarevar323),__newdontcarevar324,__newcontextvar327))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar328,flapply(extension,__newdontcarevar329,__newdontcarevar330),__newcontextvar333))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar334,flapply(extension,__newdontcarevar335),__newdontcarevar336,__newcontextvar339))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar340,flapply(expand,__newdontcarevar341,__newdontcarevar342),__newcontextvar345))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar346,flapply(expand,__newdontcarevar347),__newdontcarevar348,__newcontextvar351))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar352,flapply(dirname,__newdontcarevar353,__newdontcarevar354),__newcontextvar357))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar358,flapply(dirname,__newdontcarevar359),__newdontcarevar360,__newcontextvar363))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar364,flapply(newerthan,__newdontcarevar365,__newdontcarevar366),__newcontextvar369))],[flexport(readable,FLORA_THIS_MODULE_NAME,[],FLORA_THIS_WORKSPACE(d^meth)(__newdontcarevar370,flapply(copy,__newdontcarevar371,__newdontcarevar372),__newcontextvar375))]])).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(check_stream,__StreamOrAlias,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_flora''rule_enabled'(4,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(usermod,nonvar(__StreamOrAlias)),','(:(file_io,check_stream_or_alias(__StreamOrAlias,___Predicate,___Arg,__Stream)),:(file_io,is_valid_stream(__Stream,___Mode)))),fllibexecute_delayed_calls([__Stream,__StreamOrAlias,___Arg,___Mode,___Predicate],[__StreamOrAlias])))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Filename,flapply(open,__Mode,__Stream),'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_flora''rule_enabled'(6,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(basics,memberchk(__Mode,[read,write,append,write_binary,append_binary])),','(!,','(flora_plg2hlg(__FilenameP,__Filename,flapply,1),','(:(flora_ground,flrground(__FilenameP)),open(__FilenameP,__Mode,__Stream))))),fllibexecute_delayed_calls([__Filename,__FilenameP,__Mode,__Stream],[__Filename,__Mode,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Filename,flapply(open,__Mode),__Stream,'_$ctxt'(_CallerModuleVar,6,__newcontextvar2)),','('_$_$_flora''rule_enabled'(6,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(basics,memberchk(__Mode,[read,write,append,write_binary,append_binary])),','(!,','(flora_plg2hlg(__FilenameP,__Filename,flapply,1),','(:(flora_ground,flrground(__FilenameP)),open(__FilenameP,__Mode,__Stream))))),fllibexecute_delayed_calls([__Filename,__FilenameP,__Mode,__Stream],[__Filename,__Mode,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Filename,flapply(open,__Mode,__newdontcarevar1),'_$ctxt'(_CallerModuleVar,8,__newcontextvar2)),','('_$_$_flora''rule_enabled'(8,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_WORKSPACE(\\system,d^tblflapply)(sysabort,['In ''',__Filename,'''[open(',__Mode,',...)]@\\sys: invalid file opening mode. Valid modes are: read, write, append, write_binary, append_binary'],'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,close,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','('_$_$_flora''rule_enabled'(10,'flrio.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10)),','(!,close(__Stream))))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,close,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','('_$_$_flora''rule_enabled'(12,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(stream_error,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(stream_error,__Stream,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','('_$_$_flora''rule_enabled'(14,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,integer(__Stream)),','(!,FLORA_WORKSPACE(\\system,d^tblflapply)(sysabort,['in ?Stream[close]@\\sys: invalid I/O stream = ',__Stream,'.
		This stream has probably been closed by you or never opened.'],'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(stream_error,__Stream,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','('_$_$_flora''rule_enabled'(16,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_WORKSPACE(\\system,d^tblflapply)(sysabort,['in ?Stream[close]@\\sys: invalid I/O stream=',__Stream,'.'],'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(fmt_write,__Stream,__Format,__O,__Options,__M,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','('_$_$_flora''rule_enabled'(18,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),','(!,','(FLORA_THIS_WORKSPACE(d^tblflapply)(florify_arguments,__O,__FO,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,18)),fmt_write(__Stream,__Format,__FO)))),fllibexecute_delayed_calls([__FO,__Format,__M,__O,__Options,__Stream],[__Format,__M,__O,__Options,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(fmt_write,__Stream,__newdontcarevar1,__newdontcarevar2,__newdontcarevar3,__newdontcarevar4,'_$ctxt'(_CallerModuleVar,20,__newcontextvar5)),','('_$_$_flora''rule_enabled'(20,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(stream_error,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,20)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(fmt_write,__Stream,__Format,__O,__Options,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','('_$_$_flora''rule_enabled'(22,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write,__Stream,__Format,__O,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22))),fllibexecute_delayed_calls([__Format,__M,__O,__Options,__Stream],[__Format,__O,__Options,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(fmt_write,__Stream,__Format,__O,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','('_$_$_flora''rule_enabled'(24,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write,__Stream,__Format,__O,[oid],__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24))),fllibexecute_delayed_calls([__Format,__M,__O,__Stream],[__Format,__O,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(fmt_write,__Format,__O,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','('_$_$_flora''rule_enabled'(26,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),','(FLORA_THIS_WORKSPACE(d^tblflapply)(telling,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write,__Stream,__Format,__O,[oid],__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,26)))),fllibexecute_delayed_calls([__Format,__M,__O,__Stream],[__Format,__O])))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,flapply(fmt_write,__Format,__O),'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','('_$_$_flora''rule_enabled'(28,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write,__Stream,__Format,__O,[oid],__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28))),fllibexecute_delayed_calls([__Format,__M,__O,__Stream],[__Format,__O,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,flapply(fmt_write,__Format,__O,__Options),'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','('_$_$_flora''rule_enabled'(30,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write,__Stream,__Format,__O,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30))),fllibexecute_delayed_calls([__Format,__M,__O,__Options,__Stream],[__Format,__O,__Options,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(fmt_write_string,__String,__Format,__O,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),','('_$_$_flora''rule_enabled'(32,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write_string,__String,__Format,__O,[oid],__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32))),fllibexecute_delayed_calls([__Format,__M,__O,__String],[__Format,__O,__String])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(fmt_write_string,__String,__Format,__O,__Options,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),','('_$_$_flora''rule_enabled'(34,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_write_string,__String,__Format,__O,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34))),fllibexecute_delayed_calls([__Format,__M,__O,__Options,__String],[__Format,__O,__Options,__String])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(fmt_write_string,__String,__Format,__O,__Options,__M,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),','('_$_$_flora''rule_enabled'(36,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(florify_arguments,__O,__FO,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36)),','(fmt_write_string(__String1,__Format,__FO),=(__String,__String1))),fllibexecute_delayed_calls([__FO,__Format,__M,__O,__Options,__String,__String1],[__Format,__M,__O,__Options,__String])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flapply(fmt_read,__Format),__Result,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),','('_$_$_flora''rule_enabled'(38,'flrio.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38)),','(!,FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_read_aux,__Stream,__Format,__Result,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,38)))))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flapply(fmt_read,__newdontcarevar1),__newdontcarevar2,'_$ctxt'(_CallerModuleVar,40,__newcontextvar3)),','('_$_$_flora''rule_enabled'(40,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(stream_error,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,40)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(fmt_read_aux,__Stream,__Format,__Result,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),','('_$_$_flora''rule_enabled'(42,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(fmt_read(__Stream,__Format,__PlgResult,__Status),','(';'(->(==(__Status,-1),'\\false'),';'(=(__Result_pre,__PlgResult),FLORA_THIS_WORKSPACE(d^tblflapply)(fmt_read_aux,__Stream,__Format,__Result_pre,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,42)))),flora_plg2hlg(__Result_pre,__Result,flapply,1))),fllibexecute_delayed_calls([__Format,__PlgResult,__Result,__Result_pre,__Status,__Stream],[__Format,__Result,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,flapply(write_canonical,__HTerm),'_$ctxt'(_CallerModuleVar,44,__newcontextvar1)),','('_$_$_flora''rule_enabled'(44,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,44)),','(!,','(flora_plg2hlg(__PTerm,__HTerm,flapply,1),:(xsb_writ,file_write_canonical(__Stream,__PTerm))))),fllibexecute_delayed_calls([__HTerm,__PTerm,__Stream],[__HTerm,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,flapply(write_canonical,__newdontcarevar1),'_$ctxt'(_CallerModuleVar,46,__newcontextvar2)),','('_$_$_flora''rule_enabled'(46,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(stream_error,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,46)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(write_canonical,__HTerm,'_$ctxt'(_CallerModuleVar,48,__newcontextvar1)),','('_$_$_flora''rule_enabled'(48,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(flora_plg2hlg(__PTerm,__HTerm,flapply,1),write_canonical(__PTerm)),fllibexecute_delayed_calls([__HTerm,__PTerm],[__HTerm])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,read_canonical,__Result,'_$ctxt'(_CallerModuleVar,50,__newcontextvar1)),','('_$_$_flora''rule_enabled'(50,'flrio.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,50)),','(!,FLORA_THIS_WORKSPACE(d^tblflapply)(read_canonical_aux,__Stream,__Result,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,50)))))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,read_canonical,__newdontcarevar1,'_$ctxt'(_CallerModuleVar,52,__newcontextvar2)),','('_$_$_flora''rule_enabled'(52,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(stream_error,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,52)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(read_canonical_aux,__Stream,__Result,'_$ctxt'(_CallerModuleVar,54,__newcontextvar1)),','('_$_$_flora''rule_enabled'(54,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(machine,file_read_canonical(__Stream,__PlgResult,__newdontcarevar2)),','(';'(->(==(__PlgResult,end_of_file),'\\false'),';'(=(__Result_pre,__PlgResult),FLORA_THIS_WORKSPACE(d^tblflapply)(read_canonical_aux,__Stream,__Result_pre,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,54)))),flora_plg2hlg(__Result_pre,__Result,flapply,1))),fllibexecute_delayed_calls([__PlgResult,__Result,__Result_pre,__Stream,__newdontcarevar4],[__Result,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flapply(readline,atom),__String,'_$ctxt'(_CallerModuleVar,56,__newcontextvar1)),','('_$_$_flora''rule_enabled'(56,'flrio.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,56)),','(!,FLORA_THIS_WORKSPACE(d^tblflapply)(readline_aux,atom,__Stream,__String,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,56)))))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flapply(readline,charlist),__Charlist,'_$ctxt'(_CallerModuleVar,58,__newcontextvar1)),','('_$_$_flora''rule_enabled'(58,'flrio.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,58)),','(!,FLORA_THIS_WORKSPACE(d^tblflapply)(readline_aux,list,__Stream,__Charlist,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,58)))))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flapply(readline,__Request),__newdontcarevar1,'_$ctxt'(_CallerModuleVar,60,__newcontextvar2)),','('_$_$_flora''rule_enabled'(60,'flrio.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,60)),','(!,FLORA_WORKSPACE(\\system,d^tblflapply)(sysabort,['invalid readline format, ',__Request],'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,60)))))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flapply(readline,__newdontcarevar1),__newdontcarevar2,'_$ctxt'(_CallerModuleVar,62,__newcontextvar3)),','('_$_$_flora''rule_enabled'(62,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(stream_error,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,62)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(readline_aux,__Request,__Stream,__Result,'_$ctxt'(_CallerModuleVar,64,__newcontextvar1)),','('_$_$_flora''rule_enabled'(64,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(';'(->(==(__Request,atom),:(file_io,file_read_line_atom(__Stream,__String))),:(file_io,file_read_line_list(__Stream,__String))),','(';'(=(__Result_pre,__String),FLORA_THIS_WORKSPACE(d^tblflapply)(readline_aux,__Request,__Stream,__Result_pre,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,64))),=(__Result,__Result_pre))),fllibexecute_delayed_calls([__Request,__Result,__Result_pre,__Stream,__String],[__Request,__Result,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(write,__O,'_$ctxt'(_CallerModuleVar,66,__newcontextvar1)),','('_$_$_flora''rule_enabled'(66,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),','(FLORA_THIS_WORKSPACE(d^tblflapply)(telling,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,66)),FLORA_THIS_WORKSPACE(d^tblflapply)(write,__Stream,__O,[oid],__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,66)))),fllibexecute_delayed_calls([__M,__O,__Stream],[__O])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(write,__Stream,__O,'_$ctxt'(_CallerModuleVar,68,__newcontextvar1)),','('_$_$_flora''rule_enabled'(68,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),FLORA_THIS_WORKSPACE(d^tblflapply)(write,__Stream,__O,[oid],__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,68))),fllibexecute_delayed_calls([__M,__O,__Stream],[__O,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(write,__Stream,__O,__Options,'_$ctxt'(_CallerModuleVar,70,__newcontextvar1)),','('_$_$_flora''rule_enabled'(70,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),FLORA_THIS_WORKSPACE(d^tblflapply)(write,__Stream,__O,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,70))),fllibexecute_delayed_calls([__M,__O,__Options,__Stream],[__O,__Options,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(write,__Stream,__O,___Options,___M,'_$ctxt'(_CallerModuleVar,72,__newcontextvar1)),','('_$_$_flora''rule_enabled'(72,'flrio.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,72)),','(atomic(__O),','(\+(:(flrdatatype,'\\isiri'(__O))),','(\+(:(flrdatatype,'\\isstring'(__O))),','(\+(:(flrnewoid,'\\isskolem'(__O))),','(!,write(__Stream,__O))))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(write,__Stream,__O,__Options,__M,'_$ctxt'(_CallerModuleVar,74,__newcontextvar1)),','('_$_$_flora''rule_enabled'(74,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,74)),','(!,','(FLORA_THIS_WORKSPACE(d^tblflapply)(change_module_if_needed,__O,__OM,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,74)),';'(->(:(basics,memberchk(oid,__Options)),:(flrdecode,flora_write_oid(__Stream,__OM))),:(flrdecode,flora_write_goal_mainless(__Stream,__OM)))))),fllibexecute_delayed_calls([__M,__O,__OM,__Options,__Stream],[__M,__O,__Options,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(write,__Stream,__newdontcarevar1,__newdontcarevar2,__newdontcarevar3,'_$ctxt'(_CallerModuleVar,76,__newcontextvar4)),','('_$_$_flora''rule_enabled'(76,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(stream_error,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,76)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(writeln,__O,'_$ctxt'(_CallerModuleVar,78,__newcontextvar1)),','('_$_$_flora''rule_enabled'(78,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),','(FLORA_THIS_WORKSPACE(d^tblflapply)(telling,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,78)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(write,__Stream,__O,[oid],__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,78)),FLORA_THIS_WORKSPACE(d^tblflapply)(nl,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,78))))),fllibexecute_delayed_calls([__M,__O,__Stream],[__O])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(writeln,__Stream,__O,'_$ctxt'(_CallerModuleVar,80,__newcontextvar1)),','('_$_$_flora''rule_enabled'(80,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),','(FLORA_THIS_WORKSPACE(d^tblflapply)(write,__Stream,__O,[oid],__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,80)),FLORA_THIS_WORKSPACE(d^tblflapply)(nl,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,80)))),fllibexecute_delayed_calls([__M,__O,__Stream],[__O,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(writeln,__Stream,__O,__Options,'_$ctxt'(_CallerModuleVar,82,__newcontextvar1)),','('_$_$_flora''rule_enabled'(82,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),','(FLORA_THIS_WORKSPACE(d^tblflapply)(write,__Stream,__O,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,82)),FLORA_THIS_WORKSPACE(d^tblflapply)(nl,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,82)))),fllibexecute_delayed_calls([__M,__O,__Options,__Stream],[__O,__Options,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(nl,'_$ctxt'(_CallerModuleVar,84,__newcontextvar1)),','('_$_$_flora''rule_enabled'(84,'flrio.flr',FLORA_THIS_MODULE_NAME),nl)).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(nl,__Stream,'_$ctxt'(_CallerModuleVar,86,__newcontextvar1)),','('_$_$_flora''rule_enabled'(86,'flrio.flr',FLORA_THIS_MODULE_NAME),nl(__Stream))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,flapply(write,__O),'_$ctxt'(_CallerModuleVar,88,__newcontextvar1)),','('_$_$_flora''rule_enabled'(88,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),FLORA_THIS_WORKSPACE(d^tblflapply)(write,__Stream,__O,[oid],__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,88))),fllibexecute_delayed_calls([__M,__O,__Stream],[__O,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,flapply(write,__O,__Options),'_$ctxt'(_CallerModuleVar,90,__newcontextvar1)),','('_$_$_flora''rule_enabled'(90,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),FLORA_THIS_WORKSPACE(d^tblflapply)(write,__Stream,__O,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,90))),fllibexecute_delayed_calls([__M,__O,__Options,__Stream],[__O,__Options,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,flapply(writeln,__O),'_$ctxt'(_CallerModuleVar,92,__newcontextvar1)),','('_$_$_flora''rule_enabled'(92,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),','(FLORA_THIS_WORKSPACE(d^tblflapply)(write,__Stream,__O,[oid],__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,92)),FLORA_THIS_WORKSPACE(d^tblflapply)(nl,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,92)))),fllibexecute_delayed_calls([__M,__O,__Stream],[__O,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,flapply(writeln,__O,__Options),'_$ctxt'(_CallerModuleVar,94,__newcontextvar1)),','('_$_$_flora''rule_enabled'(94,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','('_$_$_flora''silent_equal'(_CallerModuleVar,__M),','(FLORA_THIS_WORKSPACE(d^tblflapply)(write,__Stream,__O,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,94)),FLORA_THIS_WORKSPACE(d^tblflapply)(nl,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,94)))),fllibexecute_delayed_calls([__M,__O,__Options,__Stream],[__O,__Options,__Stream])))).
?-(:(flrprolog,flora_define_modular_prolog([prolog(prolog_read_aux,4,FLORA_THIS_MODULE_NAME)]))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,prolog_read,__Result,'_$ctxt'(_CallerModuleVar,96,__newcontextvar1)),','('_$_$_flora''rule_enabled'(96,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^mvd)(__Stream,flapply(prolog_read,FLORA_THIS_WORKSPACE(d^tblflapply)(default_prolog_read_err_handler,'_$ctxt'(__newcontextvar2,__newcontextvar4,__newcontextvar3))),__Result,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,96)))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flapply(prolog_read,__ErrHandler),__Result,'_$ctxt'(_CallerModuleVar,98,__newcontextvar1)),','('_$_$_flora''rule_enabled'(98,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(check_stream,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,98)),','(!,','(fllibmetauniv(__ErrHandler,[flapply(hilog,__Handler,__Mod)]),FLORA_THIS_WORKSPACE(prolog_read_aux)(__Stream,__Result,__Handler,__Mod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,98))))),fllibexecute_delayed_calls([__ErrHandler,__Handler,__Mod,__Result,__Stream],[__ErrHandler,__Result,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flapply(prolog_read,__newdontcarevar1),__newdontcarevar2,'_$ctxt'(_CallerModuleVar,100,__newcontextvar3)),','('_$_$_flora''rule_enabled'(100,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(stream_error,__Stream,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,100)))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flora_read,__Result,'_$ctxt'(_CallerModuleVar,102,__newcontextvar1)),','('_$_$_flora''rule_enabled'(102,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_WORKSPACE(\\parse,d^meth)(__Stream,flapply(readAll,__Result,__Stat),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,102)),';'(->(=(__Stat,[null|__newdontcarevar4]),'\\false'),';'(->(=(__Stat,[error|__newdontcarevar5]),=(__Result,flora_read_error)),'\\true'))),fllibexecute_delayed_calls([__Result,__Stat,__Stream,__newdontcarevar6],[__Result,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,ergo_read,__Result,'_$ctxt'(_CallerModuleVar,102,__newcontextvar2)),','('_$_$_flora''rule_enabled'(102,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_WORKSPACE(\\parse,d^meth)(__Stream,flapply(readAll,__Result,__Stat),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,102)),';'(->(=(__Stat,[null|__newdontcarevar4]),'\\false'),';'(->(=(__Stat,[error|__newdontcarevar5]),=(__Result,flora_read_error)),'\\true'))),fllibexecute_delayed_calls([__Result,__Stat,__Stream,__newdontcarevar7],[__Result,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flapply(flora_read,__Module),__Result,'_$ctxt'(_CallerModuleVar,104,__newcontextvar1)),','('_$_$_flora''rule_enabled'(104,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_WORKSPACE(\\parse,d^meth)(__Stream,flapply(flapply(readAll,__Module),__Result,__Stat),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,104)),';'(->(=(__Stat,[null|__newdontcarevar4]),'\\false'),';'(->(=(__Stat,[error|__newdontcarevar5]),=(__Result,flora_read_error)),'\\true'))),fllibexecute_delayed_calls([__Module,__Result,__Stat,__Stream,__newdontcarevar6],[__Module,__Result,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)(__Stream,flapply(ergo_read,__Module),__Result,'_$ctxt'(_CallerModuleVar,104,__newcontextvar2)),','('_$_$_flora''rule_enabled'(104,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_WORKSPACE(\\parse,d^meth)(__Stream,flapply(flapply(readAll,__Module),__Result,__Stat),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,104)),';'(->(=(__Stat,[null|__newdontcarevar4]),'\\false'),';'(->(=(__Stat,[error|__newdontcarevar5]),=(__Result,flora_read_error)),'\\true'))),fllibexecute_delayed_calls([__Module,__Result,__Stat,__Stream,__newdontcarevar7],[__Module,__Result,__Stream])))).
:-(FLORA_THIS_WORKSPACE(prolog_read_aux)(__Stream,__Result,__Handler,__Mod,'_$ctxt'(_CallerModuleVar,106,__newcontextvar1)),','('_$_$_flora''rule_enabled'(106,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(fllibcatch(read(__Stream,__PlgResult),__Ball,fllibmodlit('d^tblflapply',[__Handler,__Stream,__PlgResult,__Ball,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,106)],__Mod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,106))),','(';'(->(==(__PlgResult,end_of_file),'\\false'),';'(=(__Result_pre,__PlgResult),FLORA_THIS_WORKSPACE(prolog_read_aux)(__Stream,__Result_pre,__Handler,__Mod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,106)))),flora_plg2hlg(__Result_pre,__Result,flapply,1))),fllibexecute_delayed_calls([__Ball,__Handler,__Mod,__PlgResult,__Result,__Result_pre,__Stream],[__Handler,__Mod,__Result,__Stream])))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Filename,see,'_$ctxt'(_CallerModuleVar,108,__newcontextvar1)),','('_$_$_flora''rule_enabled'(108,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(flora_ground,flrground(__Filename)),see(__Filename)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(see,__Filename,'_$ctxt'(_CallerModuleVar,110,__newcontextvar1)),','('_$_$_flora''rule_enabled'(110,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(flora_ground,flrground(__Filename)),see(__Filename)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(seen,'_$ctxt'(_CallerModuleVar,112,__newcontextvar1)),','('_$_$_flora''rule_enabled'(112,'flrio.flr',FLORA_THIS_MODULE_NAME),seen)).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(seeing,__Stream,'_$ctxt'(_CallerModuleVar,114,__newcontextvar1)),','('_$_$_flora''rule_enabled'(114,'flrio.flr',FLORA_THIS_MODULE_NAME),','(';'(:(usermod,integer(__Stream)),:(usermod,var(__Stream))),','(!,seeing(__Stream))))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,seeing,'_$ctxt'(_CallerModuleVar,116,__newcontextvar1)),','('_$_$_flora''rule_enabled'(116,'flrio.flr',FLORA_THIS_MODULE_NAME),','(';'(:(usermod,integer(__Stream)),:(usermod,var(__Stream))),','(!,seeing(__Stream))))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Filename,tell,'_$ctxt'(_CallerModuleVar,118,__newcontextvar1)),','('_$_$_flora''rule_enabled'(118,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(flora_ground,flrground(__Filename)),tell(__Filename)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(tell,__Filename,'_$ctxt'(_CallerModuleVar,120,__newcontextvar1)),','('_$_$_flora''rule_enabled'(120,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(flora_ground,flrground(__Filename)),tell(__Filename)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(told,'_$ctxt'(_CallerModuleVar,122,__newcontextvar1)),','('_$_$_flora''rule_enabled'(122,'flrio.flr',FLORA_THIS_MODULE_NAME),told)).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(telling,__Stream,'_$ctxt'(_CallerModuleVar,124,__newcontextvar1)),','('_$_$_flora''rule_enabled'(124,'flrio.flr',FLORA_THIS_MODULE_NAME),','(';'(:(usermod,integer(__Stream)),:(usermod,var(__Stream))),','(!,telling(__Stream))))).
:-(FLORA_THIS_WORKSPACE(static^meth)(__Stream,telling,'_$ctxt'(_CallerModuleVar,126,__newcontextvar1)),','('_$_$_flora''rule_enabled'(126,'flrio.flr',FLORA_THIS_MODULE_NAME),','(';'(:(usermod,integer(__Stream)),:(usermod,var(__Stream))),','(!,telling(__Stream))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(florify_arguments,__WrappedArgs,__OutTerm,__Options,__M,'_$ctxt'(_CallerModuleVar,128,__newcontextvar1)),','('_$_$_flora''rule_enabled'(128,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(fllibmetauniv(__WrappedArgs,[flapply(hilog,__Fun)|__Args]),','(!,','(FLORA_THIS_WORKSPACE(d^tblflapply)(florify_arglist,__Args,__OutList,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,128)),fllibmetauniv(__OutTerm,[__Fun|__OutList])))),fllibexecute_delayed_calls([__Args,__Fun,__M,__Options,__OutList,__OutTerm,__WrappedArgs],[__M,__Options,__OutTerm,__WrappedArgs])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(florify_arguments,__Arg,__OutTerm,___Options,___M,'_$ctxt'(_CallerModuleVar,130,__newcontextvar1)),','('_$_$_flora''rule_enabled'(130,'flrio.flr',FLORA_THIS_MODULE_NAME),','(';'(:(flrdatatype,'\\isiri'(__Arg)),';'(:(flrdatatype,'\\isstring'(__Arg)),:(flrnewoid,'\\isskolem'(__Arg)))),','(!,:(flrdecode,flora_decode_oid_as_atom(__Arg,__OutTerm)))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(florify_arguments,___Arg,___Arg,___Options,___M,'_$ctxt'(_CallerModuleVar,132,__newcontextvar1)),','('_$_$_flora''rule_enabled'(132,'flrio.flr',FLORA_THIS_MODULE_NAME),'\\true')).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(florify_arglist,[],[],__newdontcarevar1,__newdontcarevar2,'_$ctxt'(_CallerModuleVar,134,__newcontextvar3)),','('_$_$_flora''rule_enabled'(134,'flrio.flr',FLORA_THIS_MODULE_NAME),!)).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(florify_arglist,[__Arg|__Args],[__OutArg|__OutArgs],__Options,__M,'_$ctxt'(_CallerModuleVar,136,__newcontextvar1)),','('_$_$_flora''rule_enabled'(136,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(';'(:(usermod,compound(__Arg)),';'(:(flrdatatype,'\\isiri'(__Arg)),';'(:(flrdatatype,'\\isstring'(__Arg)),:(flrnewoid,'\\isskolem'(__Arg))))),','(!,','(FLORA_THIS_WORKSPACE(d^tblflapply)(change_module_if_needed,__Arg,__ArgM,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,136)),','(';'(->(:(basics,memberchk(oid,__Options)),:(flrdecode,flora_decode_oid_as_atom(__ArgM,__OutArg))),:(flrdecode,flora_decode_goal_as_mainless_atom(__ArgM,__OutArg))),FLORA_THIS_WORKSPACE(d^tblflapply)(florify_arglist,__Args,__OutArgs,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,136)))))),fllibexecute_delayed_calls([__Arg,__ArgM,__Args,__M,__Options,__OutArg,__OutArgs],[__Arg,__Args,__M,__Options,__OutArg,__OutArgs])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(florify_arglist,[__Arg|__Args],[__OutArg|__OutArgs],__Options,__M,'_$ctxt'(_CallerModuleVar,138,__newcontextvar1)),','('_$_$_flora''rule_enabled'(138,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,var(__Arg)),','(!,','(:(flrdecode,flora_decode_oid_as_atom(__Arg,__OutArg)),FLORA_THIS_WORKSPACE(d^tblflapply)(florify_arglist,__Args,__OutArgs,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,138))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(florify_arglist,[___Arg|__Args],[___Arg|__OutArgs],__Options,__M,'_$ctxt'(_CallerModuleVar,140,__newcontextvar1)),','('_$_$_flora''rule_enabled'(140,'flrio.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(florify_arglist,__Args,__OutArgs,__Options,__M,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,140)))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(exists,__F),'_$ctxt'(_CallerModuleVar,142,__newcontextvar1)),','('_$_$_flora''rule_enabled'(142,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(exists,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(isdir,__F),'_$ctxt'(_CallerModuleVar,144,__newcontextvar1)),','('_$_$_flora''rule_enabled'(144,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(isdir,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(isplain,__F),'_$ctxt'(_CallerModuleVar,146,__newcontextvar1)),','('_$_$_flora''rule_enabled'(146,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(isplain,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(readable,__F),'_$ctxt'(_CallerModuleVar,148,__newcontextvar1)),','('_$_$_flora''rule_enabled'(148,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(readable,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(writable,__F),'_$ctxt'(_CallerModuleVar,150,__newcontextvar1)),','('_$_$_flora''rule_enabled'(150,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(writable,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(executable,__F),'_$ctxt'(_CallerModuleVar,152,__newcontextvar1)),','('_$_$_flora''rule_enabled'(152,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(executable,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^mvd)('File',flapply(modtime,__F),__T,'_$ctxt'(_CallerModuleVar,154,__newcontextvar1)),','('_$_$_flora''rule_enabled'(154,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(modtime,__F,__T)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(modtime,__F,__T),'_$ctxt'(_CallerModuleVar,154,__newcontextvar2)),','('_$_$_flora''rule_enabled'(154,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(modtime,__F,__T)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(mkdir,__F),'_$ctxt'(_CallerModuleVar,156,__newcontextvar1)),','('_$_$_flora''rule_enabled'(156,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(mkdir,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(rmdir,__F),'_$ctxt'(_CallerModuleVar,158,__newcontextvar1)),','('_$_$_flora''rule_enabled'(158,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(rmdir,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(chdir,__F),'_$ctxt'(_CallerModuleVar,160,__newcontextvar1)),','('_$_$_flora''rule_enabled'(160,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(usermod,atom(__F)),','(!,','(';'(->(FLORA_THIS_WORKSPACE(d^tblflapply)(is_directory,__F,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,160)),'\\true'),FLORA_WORKSPACE(\\system,d^tblflapply)(warning,['File[chdir(',__F,')]@\\io: `',__F,''' is not a directory name'],'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,160))),','(:(flrporting,flora_file_op(chdir,__F)),','(FLORA_THIS_WORKSPACE(d^mvd)('File',cwd,__NewF,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,160)),:(flrutils,replace_flora_configuration(cwd,__NewF,__newdontcarevar5))))))),fllibexecute_delayed_calls([__F,__NewF,__newdontcarevar6],[__F])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)('File',cwd,__F,'_$ctxt'(_CallerModuleVar,162,__newcontextvar1)),','('_$_$_flora''rule_enabled'(162,'flrio.flr',FLORA_THIS_MODULE_NAME),','(!,:(flrporting,flora_file_op(cwd,__F))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(cwd,__F),'_$ctxt'(_CallerModuleVar,162,__newcontextvar2)),','('_$_$_flora''rule_enabled'(162,'flrio.flr',FLORA_THIS_MODULE_NAME),','(!,:(flrporting,flora_file_op(cwd,__F))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(link,__F,__D),'_$ctxt'(_CallerModuleVar,164,__newcontextvar1)),','('_$_$_flora''rule_enabled'(164,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(:(usermod,atom(__D)),','(!,:(flrporting,flora_file_op(link,__F,__D))))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(unlink,__F),'_$ctxt'(_CallerModuleVar,166,__newcontextvar1)),','('_$_$_flora''rule_enabled'(166,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(unlink,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(remove,__F),'_$ctxt'(_CallerModuleVar,168,__newcontextvar1)),','('_$_$_flora''rule_enabled'(168,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(rm,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(tmpfilename,__F),'_$ctxt'(_CallerModuleVar,170,__newcontextvar1)),','('_$_$_flora''rule_enabled'(170,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(tmpfilename,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(isabsolute,__F),'_$ctxt'(_CallerModuleVar,172,__newcontextvar1)),','('_$_$_flora''rule_enabled'(172,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(!,:(flrporting,flora_file_op(isabsolute,__F)))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(rename,__F,__To),'_$ctxt'(_CallerModuleVar,174,__newcontextvar1)),','('_$_$_flora''rule_enabled'(174,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(:(usermod,atom(__To)),','(!,:(flrporting,flora_file_op(rename,__F,__To))))))).
:-(FLORA_THIS_WORKSPACE(static^mvd)('File',flapply(basename,__F),__Base,'_$ctxt'(_CallerModuleVar,176,__newcontextvar1)),','('_$_$_flora''rule_enabled'(176,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(usermod,atom(__F)),','(!,','(:(flrporting,flora_file_op(basename,__F,__Base1)),=(__Base,__Base1)))),fllibexecute_delayed_calls([__Base,__Base1,__F],[__Base,__F])))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(basename,__F,__Base),'_$ctxt'(_CallerModuleVar,176,__newcontextvar2)),','('_$_$_flora''rule_enabled'(176,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(usermod,atom(__F)),','(!,','(:(flrporting,flora_file_op(basename,__F,__Base1)),=(__Base,__Base1)))),fllibexecute_delayed_calls([__Base,__Base1,__F],[__Base,__F])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)('File',flapply(extension,__F),__Ext,'_$ctxt'(_CallerModuleVar,178,__newcontextvar1)),','('_$_$_flora''rule_enabled'(178,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(usermod,atom(__F)),','(!,','(:(flrporting,flora_file_op(extension,__F,__Ext1)),=(__Ext,__Ext1)))),fllibexecute_delayed_calls([__Ext,__Ext1,__F],[__Ext,__F])))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(extension,__F,__Ext),'_$ctxt'(_CallerModuleVar,178,__newcontextvar2)),','('_$_$_flora''rule_enabled'(178,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(usermod,atom(__F)),','(!,','(:(flrporting,flora_file_op(extension,__F,__Ext1)),=(__Ext,__Ext1)))),fllibexecute_delayed_calls([__Ext,__Ext1,__F],[__Ext,__F])))).
:-(FLORA_THIS_WORKSPACE(static^mvd)('File',flapply(expand,__F),__Expanded,'_$ctxt'(_CallerModuleVar,180,__newcontextvar1)),','('_$_$_flora''rule_enabled'(180,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(usermod,atom(__F)),','(!,','(:(flrporting,flora_file_op(expand,__F,__Expanded1)),=(__Expanded,__Expanded1)))),fllibexecute_delayed_calls([__Expanded,__Expanded1,__F],[__Expanded,__F])))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(expand,__F,__Expanded),'_$ctxt'(_CallerModuleVar,180,__newcontextvar2)),','('_$_$_flora''rule_enabled'(180,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(usermod,atom(__F)),','(!,','(:(flrporting,flora_file_op(expand,__F,__Expanded1)),=(__Expanded,__Expanded1)))),fllibexecute_delayed_calls([__Expanded,__Expanded1,__F],[__Expanded,__F])))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(newerthan,__F,__F2),'_$ctxt'(_CallerModuleVar,182,__newcontextvar1)),','('_$_$_flora''rule_enabled'(182,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(:(usermod,atom(__F2)),','(!,:(flrporting,flora_file_op(newerthan,__F,__F2))))))).
:-(FLORA_THIS_WORKSPACE(static^mvd)('File',flapply(dirname,__F),__Dir,'_$ctxt'(_CallerModuleVar,184,__newcontextvar1)),','('_$_$_flora''rule_enabled'(184,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(usermod,atom(__F)),','(!,','(:(flrporting,flora_file_op(dirname,__F,__Dir1)),=(__Dir,__Dir1)))),fllibexecute_delayed_calls([__Dir,__Dir1,__F],[__Dir,__F])))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(dirname,__F,__Dir),'_$ctxt'(_CallerModuleVar,184,__newcontextvar2)),','('_$_$_flora''rule_enabled'(184,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(usermod,atom(__F)),','(!,','(:(flrporting,flora_file_op(dirname,__F,__Dir1)),=(__Dir,__Dir1)))),fllibexecute_delayed_calls([__Dir,__Dir1,__F],[__Dir,__F])))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(copy,__F,__To),'_$ctxt'(_CallerModuleVar,186,__newcontextvar1)),','('_$_$_flora''rule_enabled'(186,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,atom(__F)),','(:(usermod,atom(__To)),','(!,:(flrporting,flora_file_op(copy,__F,__To))))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',flapply(__Op,__F1,__F2),'_$ctxt'(_CallerModuleVar,188,__newcontextvar1)),','('_$_$_flora''rule_enabled'(188,'flrio.flr',FLORA_THIS_MODULE_NAME),','(:(flrsetops,flora_list_member(__Op,[newerthan,rename,link,copy])),','(!,:(flrporting,flora_abort(['File','[',__Op,'(',__F1,',',__F2,')]: ','both file arguments must be bound to atoms'],'_$flora:abort_notrace')))))).
:-(FLORA_THIS_WORKSPACE(static^meth)('File',__Op,'_$ctxt'(_CallerModuleVar,190,__newcontextvar1)),','('_$_$_flora''rule_enabled'(190,'flrio.flr',FLORA_THIS_MODULE_NAME),','(','(:(flrdecode,flora_decode_oid_as_atom(__Op,__OpAtm)),:(flrporting,flora_abort(['File','[(',__OpAtm,')]: ','file argument must be bound to an atom'],'_$flora:abort_notrace'))),fllibexecute_delayed_calls([__Op,__OpAtm],[__Op])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(default_prolog_read_err_handler,___Stream,__PlgResult,___Ball,'_$ctxt'(_CallerModuleVar,192,__newcontextvar1)),','('_$_$_flora''rule_enabled'(192,'flrio.flr',FLORA_THIS_MODULE_NAME),=(__PlgResult,prolog_read_error))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(change_module_if_needed,__T,__T,___NewMod,'_$ctxt'(_CallerModuleVar,194,__newcontextvar1)),','('_$_$_flora''rule_enabled'(194,'change_module.flr',FLORA_THIS_MODULE_NAME),','(:(usermod,var(__T)),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(change_module_if_needed,[],[],___NewMod,'_$ctxt'(_CallerModuleVar,196,__newcontextvar1)),','('_$_$_flora''rule_enabled'(196,'change_module.flr',FLORA_THIS_MODULE_NAME),!)).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(change_module_if_needed,[__L|__R],[__LM|__RM],__NewMod,'_$ctxt'(_CallerModuleVar,198,__newcontextvar1)),','('_$_$_flora''rule_enabled'(198,'change_module.flr',FLORA_THIS_MODULE_NAME),','(!,','(FLORA_THIS_WORKSPACE(d^tblflapply)(change_module_if_needed,__L,__LM,__NewMod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,198)),FLORA_THIS_WORKSPACE(d^tblflapply)(change_module_if_needed,__R,__RM,__NewMod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,198)))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(change_module_if_needed,','(__L,__R),','(__LM,__RM),__NewMod,'_$ctxt'(_CallerModuleVar,200,__newcontextvar1)),','('_$_$_flora''rule_enabled'(200,'change_module.flr',FLORA_THIS_MODULE_NAME),','(!,','(FLORA_THIS_WORKSPACE(d^tblflapply)(change_module_if_needed,__L,__LM,__NewMod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,200)),FLORA_THIS_WORKSPACE(d^tblflapply)(change_module_if_needed,__R,__RM,__NewMod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,200)))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(change_module_if_needed,';'(__L,__R),';'(__LM,__RM),__NewMod,'_$ctxt'(_CallerModuleVar,202,__newcontextvar1)),','('_$_$_flora''rule_enabled'(202,'change_module.flr',FLORA_THIS_MODULE_NAME),','(!,','(FLORA_THIS_WORKSPACE(d^tblflapply)(change_module_if_needed,__L,__LM,__NewMod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,202)),FLORA_THIS_WORKSPACE(d^tblflapply)(change_module_if_needed,__R,__RM,__NewMod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,202)))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(change_module_if_needed,__T,__TM,__NewMod,'_$ctxt'(_CallerModuleVar,204,__newcontextvar1)),','('_$_$_flora''rule_enabled'(204,'change_module.flr',FLORA_THIS_MODULE_NAME),','(:(flrwrapper,is_flora_callable_literal(__T)),','(:(flrwrapper,flora_change_module(__T,__TM,','(FLORA_THIS_MODULE_NAME,__NewMod),__NewMod,['In ',FLORA_THIS_MODULE_NAME,__T,': unexpected argument'])),!)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(change_module_if_needed,__R,__RM,__NewMod,'_$ctxt'(_CallerModuleVar,206,__newcontextvar1)),','('_$_$_flora''rule_enabled'(206,'change_module.flr',FLORA_THIS_MODULE_NAME),','(','(fllibuniveqform(__R,flsysruleupdate(__newvar2,_FilenameInRuleidVar,'_$_$_flora''descr_vars',__newvar9,['_$_$_flora''prop_descriptor'(__newvar2,_FilenameInRuleidVar,__newvar3,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar2,_FilenameInRuleidVar,__newvar3,__newvar2,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar2,_FilenameInRuleidVar,__newvar4),'_$_$_flora''bool_descriptor'(__newvar2,_FilenameInRuleidVar,__newvar3,strict,'_$_$_flora''descr_vars')],[___H],___B,__newvar5,__newvar6,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar2,_FilenameInRuleidVar,__newvar7),[__newdontcarevar8],true)),','(=..(__R,[flsysruleupdate,__Id,__File,__Vars,__StmtNo,__Meta,__Head,__Body,__HeadVars,__BdyVars,__DTVars,__H2BFront,__H2BBack,__PreBody,__PostBody,__Defeat]),','(FLORA_THIS_WORKSPACE(d^tblflapply)(change_module_if_needed,__Head,__HM,__NewMod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,206)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(change_module_if_needed,__Body,__BM,__NewMod,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,206)),','(=..(__RM,[flsysruleupdate,__Id,__File,__Vars,__StmtNo,__Meta,__HM,__BM,__HeadVars,__BdyVars,__DTVars,__H2BFront,__H2BBack,__PreBody,__PostBody,__Defeat]),!))))),fllibexecute_delayed_calls([__BM,__BdyVars,__Body,__DTVars,__Defeat,__File,__H2BBack,__H2BFront,__HM,__Head,__HeadVars,__Id,__Meta,__NewMod,__PostBody,__PreBody,__R,__RM,__StmtNo,__Vars,___B,___H],[__NewMod,__R,__RM])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(change_module_if_needed,___T,___T,___NewMod,'_$ctxt'(_CallerModuleVar,208,__newcontextvar1)),','('_$_$_flora''rule_enabled'(208,'change_module.flr',FLORA_THIS_MODULE_NAME),'\\true')).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS2_FILENAME  'flrio.fls2'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS2_FILENAME,FLORA_THIS_MODULE_NAME,'fls2'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS2_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif

/************************************************************************
  file: headerinc/flrtrailer_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrtrailer.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrpreddef_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrpreddef.flh"

/***********************************************************************/

:-(FLORA_THIS_WORKSPACE(prolog_read_aux)(_h87833,_h87835,_h87837,_h87839,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(prolog_read_aux))(_h87833,_h87835,_h87837,_h87839,FWContext)).
