
:-(compiler_options([xpp_on,canonical])).

/********** Tabling and Trailer Control Variables ************/

#define EQUALITYnone
#define INHERITANCEflogic
#define TABLINGreactive
#define TABLINGvariant
#define CUSTOMnone

#define FLORA_INCREMENTAL_TABLING 

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

#define FLORA_COMPILATION_ID 7

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
#define FLORA_THIS_FILENAME  'Rishabh.flr'
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
  file: syslibinc/flranswer_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBANSWER))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrclause_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCLAUSE))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flraggmax_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBMAX))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flraggsum_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBSUM))).

/***********************************************************************/

/************************************************************************
  file: libinc/flrio_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(':'(flrlibman,flora_load_system_module(FLSYSMODIO))).

/***********************************************************************/

 
#if !defined(FLORA_FDB_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FDB_FILENAME  'Rishabh.fdb'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FDB_FILENAME,FLORA_THIS_MODULE_NAME,'fdb'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FDB_FILENAME,FLORA_THIS_FDB_STORAGE))).
#endif

 
#if !defined(FLORA_FLM_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLM_FILENAME  'Rishabh.flm'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(Rishabh,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'Rishabh.fld'
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
#define FLORA_FLS_FILENAME  'Rishabh.fls'
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

:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q1',__Name,__Shares,__SharePrice,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_flora''rule_enabled'(4,'Rishabh.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(company,__Name,__Shares,__SharePrice,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q2',__PName,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_flora''rule_enabled'(6,'Rishabh.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(person,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q3',__OName,__CName,__Shares,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','('_$_$_flora''rule_enabled'(8,'Rishabh.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)('Owns',__OName,__CName,__Shares,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q4',__CName,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','('_$_$_flora''rule_enabled'(10,'Rishabh.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(company,__CName,__newdontcarevar2,__newdontcarevar3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(board,__CName,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)('Owns',__PName,__CName,__Shares,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,10)),fllibdelayedliteral(>,'Rishabh.flr',183,[__Shares,0])))),fllibexecute_delayed_calls([__CName,__PName,__Shares,__newdontcarevar7],[__CName])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q6',__CName,__PName,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','('_$_$_flora''rule_enabled'(12,'Rishabh.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(company,__CName,__newdontcarevar2,__newdontcarevar3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(board,__CName,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(person,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,12)),','(','(fllibmax(__newdontcarevar8,[],','(FLORA_THIS_WORKSPACE(d^tblflapply)('Owns',__PName,__CName,__newdontcarevar8,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,12)),fllibexecute_delayed_calls([__CName,__PName,__newdontcarevar8],[])),__newvar9),=(__X,__newvar9)),','(fllibdelayedliteral(>,'Rishabh.flr',190,[__X,0]),FLORA_THIS_WORKSPACE(d^tblflapply)('Owns',__PName,__CName,__X,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,12))))))),fllibexecute_delayed_calls([__CName,__PName,__X,__newdontcarevar11],[__CName,__PName])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q5',__PName,__Net,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','('_$_$_flora''rule_enabled'(14,'Rishabh.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(person,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),','(fllibsum(__newdontcarevar7,[],','(','(FLORA_THIS_WORKSPACE(d^tblflapply)('Owns',__PName,__CName,__Shares,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(company,__CName,__newdontcarevar4,__SharePrice,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14)),','(fllibdelayedliteral(>,'Rishabh.flr',195,[__Shares,0]),fllibdelayedliteral('\\is','Rishabh.flr',195,[__newdontcarevar7,*(__Shares,__SharePrice)])))),fllibexecute_delayed_calls([__CName,__PName,__SharePrice,__Shares,__newdontcarevar6,__newdontcarevar7],[])),__newvar8),=(__Net,__newvar8))),fllibexecute_delayed_calls([__CName,__Net,__PName,__SharePrice,__Shares,__newdontcarevar9],[__Net,__PName])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q7',__Name1,__Name2,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','('_$_$_flora''rule_enabled'(16,'Rishabh.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(company,__Name1,__newdontcarevar2,__newdontcarevar3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(company,__Name2,__newdontcarevar5,__newdontcarevar6,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,16)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(==(__Name1,__Name2),fllibexecute_delayed_calls([__Name1,__Name2],[]))),[__Name1,__Name2],198,'Rishabh.flr')),','(FLORA_THIS_WORKSPACE(d^tblflapply)(industry,__Name1,__type,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(industry,__Name2,__type,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(board,__Name1,__PName1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,16)),FLORA_THIS_WORKSPACE(d^tblflapply)(board,__Name2,__PName2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,16)))))))),fllibexecute_delayed_calls([__Name1,__Name2,__PName1,__PName2,__newdontcarevar12,__type],[__Name1,__Name2])))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'Rishabh.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,101,FLORA_THIS_WORKSPACE(d^tblflapply)('Q1',__Name,__Shares,__SharePrice,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(company,__Name,__Shares,__SharePrice,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4)),null,'_$_$_flora''rule_enabled'(4,'Rishabh.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(6,'Rishabh.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,102,FLORA_THIS_WORKSPACE(d^tblflapply)('Q2',__PName,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(person,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),null,'_$_$_flora''rule_enabled'(6,'Rishabh.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(8,'Rishabh.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,103,FLORA_THIS_WORKSPACE(d^tblflapply)('Q3',__OName,__CName,__Shares,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Owns',__OName,__CName,__Shares,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),null,'_$_$_flora''rule_enabled'(8,'Rishabh.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(10,'Rishabh.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,104,FLORA_THIS_WORKSPACE(d^tblflapply)('Q4',__CName,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(company,__CName,__newdontcarevar2,__newdontcarevar3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(board,__CName,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)('Owns',__PName,__CName,__Shares,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,10)),fllibdelayedliteral(>,'Rishabh.flr',183,[__Shares,0])))),null,'_$_$_flora''rule_enabled'(10,'Rishabh.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CName,__PName,__Shares,__newdontcarevar7],[__CName]),true)).
?-(fllibinsrulesig(12,'Rishabh.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,105,FLORA_THIS_WORKSPACE(d^tblflapply)('Q6',__CName,__PName,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(company,__CName,__newdontcarevar2,__newdontcarevar3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(board,__CName,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(person,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,12)),','(','(fllibmax(__newdontcarevar8,[],','(FLORA_THIS_WORKSPACE(d^tblflapply)('Owns',__PName,__CName,__newdontcarevar8,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,12)),fllibexecute_delayed_calls([__CName,__PName,__newdontcarevar8],[])),__newvar9),=(__X,__newvar9)),','(fllibdelayedliteral(>,'Rishabh.flr',190,[__X,0]),FLORA_THIS_WORKSPACE(d^tblflapply)('Owns',__PName,__CName,__X,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,12))))))),null,'_$_$_flora''rule_enabled'(12,'Rishabh.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CName,__PName,__X,__newdontcarevar11],[__CName,__PName]),true)).
?-(fllibinsrulesig(14,'Rishabh.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,106,FLORA_THIS_WORKSPACE(d^tblflapply)('Q5',__PName,__Net,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(person,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),','(fllibsum(__newdontcarevar7,[],','(','(FLORA_THIS_WORKSPACE(d^tblflapply)('Owns',__PName,__CName,__Shares,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(company,__CName,__newdontcarevar4,__SharePrice,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14)),','(fllibdelayedliteral(>,'Rishabh.flr',195,[__Shares,0]),fllibdelayedliteral('\\is','Rishabh.flr',195,[__newdontcarevar7,*(__Shares,__SharePrice)])))),fllibexecute_delayed_calls([__CName,__PName,__SharePrice,__Shares,__newdontcarevar6,__newdontcarevar7],[])),__newvar8),=(__Net,__newvar8))),null,'_$_$_flora''rule_enabled'(14,'Rishabh.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CName,__Net,__PName,__SharePrice,__Shares,__newdontcarevar9],[__Net,__PName]),true)).
?-(fllibinsrulesig(16,'Rishabh.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,107,FLORA_THIS_WORKSPACE(d^tblflapply)('Q7',__Name1,__Name2,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(company,__Name1,__newdontcarevar2,__newdontcarevar3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(company,__Name2,__newdontcarevar5,__newdontcarevar6,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,16)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(==(__Name1,__Name2),fllibexecute_delayed_calls([__Name1,__Name2],[]))),[__Name1,__Name2],198,'Rishabh.flr')),','(FLORA_THIS_WORKSPACE(d^tblflapply)(industry,__Name1,__type,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(industry,__Name2,__type,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(board,__Name1,__PName1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,16)),FLORA_THIS_WORKSPACE(d^tblflapply)(board,__Name2,__PName2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,16)))))))),null,'_$_$_flora''rule_enabled'(16,'Rishabh.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Name1,__Name2,__PName1,__PName2,__newdontcarevar12,__type],[__Name1,__Name2]),true)).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 1: endorsement by a co-worker ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q1',__Name,__Shares,__SharePrice,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?Name',__Name),=('?Shares',__Shares),=('?SharePrice',__SharePrice)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 1: endorsement by a co-worker ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q2',__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?PName',__PName)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 1: endorsement by a co-worker ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q3',__OName,__CName,__Shares,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?OName',__OName),=('?CName',__CName),=('?Shares',__Shares)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 4: endorsement by a co-worker ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q4',__CName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?CName',__CName)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 6: endorsement by a co-worker ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q6',__CName,__PName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?CName',__CName),=('?PName',__PName)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 5: endorsement by a co-worker ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q5',__PName,__Net,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?PName',__PName),=('?Net',__Net)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 7: endorsement by a co-worker ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q7',__Name1,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?Name1',__Name1),=('?Name2',__Name2)])).

 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS2_FILENAME  'Rishabh.fls2'
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

