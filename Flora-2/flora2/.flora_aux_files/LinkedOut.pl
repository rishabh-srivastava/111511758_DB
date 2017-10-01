
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

#define FLORA_COMPILATION_ID 1

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
#define FLORA_THIS_FILENAME  'LinkedOut.flr'
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
  file: syslibinc/flraggavg_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBAVG))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flraggcount_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCOUNT))).

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
#define FLORA_FDB_FILENAME  'LinkedOut.fdb'
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
#define FLORA_FLM_FILENAME  'LinkedOut.flm'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(LinkedOut,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'LinkedOut.fld'
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
#define FLORA_FLS_FILENAME  'LinkedOut.fls'
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

:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q1',__Name1,__Name2,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_flora''rule_enabled'(4,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(endorse,__User1,__User2,__newdontcarevar2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),','(fllibdelayedliteral('!=','LinkedOut.flr',81,[__User1,__User2]),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__User1,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__User2,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(experience,__User1,__Organization,__From1,__To1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(experience,__User2,__Organization,__From2,__To2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,4)),','(fllibdelayedliteral(<,'LinkedOut.flr',86,[__From1,20150923]),','(fllibdelayedliteral(>,'LinkedOut.flr',86,[__To1,20150923]),','(fllibdelayedliteral(<,'LinkedOut.flr',87,[__From2,20150923]),fllibdelayedliteral(>,'LinkedOut.flr',87,[__To2,20150923])))))))))),fllibexecute_delayed_calls([__From1,__From2,__Name1,__Name2,__Organization,__To1,__To2,__User1,__User2,__newdontcarevar8],[__Name1,__Name2])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q2',__Name,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_flora''rule_enabled'(6,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(endorse,__User1,__User2,__Skill,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),','(fllibdelayedliteral('!=','LinkedOut.flr',99,[__User1,__User2]),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__User2,__Skill,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),fllibexecute_delayed_calls([__Skill,__User2],[]))),[__User2,__Skill],100,'LinkedOut.flr')),FLORA_THIS_WORKSPACE(d^tblflapply)(user,__User1,__Name,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6))))),fllibexecute_delayed_calls([__Name,__Skill,__User1,__User2],[__Name])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q3',>(__Name1,__Name2),'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','('_$_$_flora''rule_enabled'(8,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id1,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id2,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),','(fllibdelayedliteral('!=','LinkedOut.flr',111,[__Id1,__Id2]),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id2,__newquantvar6,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8)),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id1,__newquantvar6,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8)),fllibexecute_delayed_calls([__Id1,__newquantvar6],[]))),[__Id1,__newquantvar6],112,'LinkedOut.flr'))),fllibexecute_delayed_calls([__Id1,__Id2,__newquantvar6],[]))),[__Id2,__Id1,__Id1,__Id1],112,'LinkedOut.flr')),','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id1,__newquantvar8,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,8)),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id2,'Skill','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,8)),fllibexecute_delayed_calls([__Id2],[]))),[__Id2],113,'LinkedOut.flr'))))))),fllibexecute_delayed_calls([__Id1,__Id2,__Name1,__Name2],[__Name1,__Name2])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q4',>(__Name1,__Name2),'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','('_$_$_flora''rule_enabled'(10,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id1,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id2,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),','(','(fllibcount(__newdontcarevar5,[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id1,__newdontcarevar5,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10)),fllibexecute_delayed_calls([__Id1,__newdontcarevar5],[])),__newvar6),fllibcount(__newdontcarevar8,[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id2,__newdontcarevar8,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,10)),fllibexecute_delayed_calls([__Id2,__newdontcarevar8],[])),__newvar9)),fllibdelayedliteral(>,'LinkedOut.flr',121,[__newvar6,__newvar9])))),fllibexecute_delayed_calls([__Id1,__Id2,__Name1,__Name2],[__Name1,__Name2])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q4_alt',+(__Name1,__Name2),'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','('_$_$_flora''rule_enabled'(12,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id1,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id2,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),','(fllibdelayedliteral('!=','LinkedOut.flr',127,[__Id1,__Id2]),','(','(fllibcount(__newdontcarevar5,[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id1,__newdontcarevar5,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),fllibexecute_delayed_calls([__Id1,__newdontcarevar5],[])),__newvar6),fllibcount(__newdontcarevar8,[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id2,__newdontcarevar8,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,12)),fllibexecute_delayed_calls([__Id2,__newdontcarevar8],[])),__newvar9)),=(__newvar6,__newvar9))))),fllibexecute_delayed_calls([__Id1,__Id2,__Name1,__Name2],[__Name1,__Name2])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q4_alt2',+(__Name1,__Name2),'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','('_$_$_flora''rule_enabled'(14,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)('Q4_alt',+(__Name1,__Name2),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),@<(__Name1,__Name2)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(avgNumberOfEndorsements,__AvgNumEndorsements,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','('_$_$_flora''rule_enabled'(16,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(','(fllibavg(__newdontcarevar9,[],','(','(fllibcount(__newdontcarevar6,[__User],','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(endorse,__newdontcarevar2,__User,__newdontcarevar3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),=(__newdontcarevar6,1)),fllibexecute_delayed_calls([__newdontcarevar6,__User,__newdontcarevar5],[])),__newvar7),=(__newdontcarevar9,__newvar7)),fllibexecute_delayed_calls([__newdontcarevar9,__User,__newdontcarevar8],[])),__newvar10),=(__newvar10,__AvgNumEndorsements)),fllibexecute_delayed_calls([__AvgNumEndorsements,__User,__newdontcarevar11],[__AvgNumEndorsements])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q5',__AvgNumEndorsements,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','('_$_$_flora''rule_enabled'(18,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(avgNumberOfEndorsements,__AvgNumEndorsements,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q6',+(+(__Name,__Endorsements),__AvgNumEndorsements),'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','('_$_$_flora''rule_enabled'(20,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id,__Name,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(avgNumberOfEndorsements,__AvgNumEndorsements,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,20)),','(','(fllibcount(__newdontcarevar8,[],','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(endorse,__newdontcarevar4,__Id,__newdontcarevar5,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,20)),=(__newdontcarevar8,1)),fllibexecute_delayed_calls([__newdontcarevar8,__Id,__newdontcarevar7],[])),__newvar9),=(__Endorsements,__newvar9)),fllibdelayedliteral(<,'LinkedOut.flr',156,[__AvgNumEndorsements,__Endorsements])))),fllibexecute_delayed_calls([__AvgNumEndorsements,__Endorsements,__Id,__Name,__newdontcarevar10],[__AvgNumEndorsements,__Endorsements,__Name])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)('Q7',-(__Name1,__Name2),'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','('_$_$_flora''rule_enabled'(22,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(indirectly_endorsed,__Name1,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(directly_endorsed,__Name1,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,22)),fllibexecute_delayed_calls([__Name1,__Name2],[]))),[__Name1,__Name2],164,'LinkedOut.flr')),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(indirectly_endorsed,__Name2,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,22)),fllibexecute_delayed_calls([__Name1,__Name2],[]))),[__Name2,__Name1],165,'LinkedOut.flr')))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(directly_endorsed,__Name1,__Name2,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','('_$_$_flora''rule_enabled'(24,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id1,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id2,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,24)),FLORA_THIS_WORKSPACE(d^tblflapply)(endorse,__Id1,__Id2,__newdontcarevar4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,24)))),fllibexecute_delayed_calls([__Id1,__Id2,__Name1,__Name2,__newdontcarevar6],[__Name1,__Name2])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(indirectly_endorsed,__Name1,__Name2,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','('_$_$_flora''rule_enabled'(26,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(directly_endorsed,__Name1,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(indirectly_endorsed,__Name1,__Name2,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','('_$_$_flora''rule_enabled'(28,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(directly_endorsed,__Name1,__Name3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),FLORA_THIS_WORKSPACE(d^tblflapply)(indirectly_endorsed,__Name3,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,28))),fllibexecute_delayed_calls([__Name1,__Name2,__Name3],[__Name1,__Name2])))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,46,FLORA_THIS_WORKSPACE(d^tblflapply)('Q1',__Name1,__Name2,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(endorse,__User1,__User2,__newdontcarevar2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),','(fllibdelayedliteral('!=','LinkedOut.flr',81,[__User1,__User2]),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__User1,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__User2,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(experience,__User1,__Organization,__From1,__To1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,4)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(experience,__User2,__Organization,__From2,__To2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,4)),','(fllibdelayedliteral(<,'LinkedOut.flr',86,[__From1,20150923]),','(fllibdelayedliteral(>,'LinkedOut.flr',86,[__To1,20150923]),','(fllibdelayedliteral(<,'LinkedOut.flr',87,[__From2,20150923]),fllibdelayedliteral(>,'LinkedOut.flr',87,[__To2,20150923])))))))))),null,'_$_$_flora''rule_enabled'(4,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__From1,__From2,__Name1,__Name2,__Organization,__To1,__To2,__User1,__User2,__newdontcarevar8],[__Name1,__Name2]),true)).
?-(fllibinsrulesig(6,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,47,FLORA_THIS_WORKSPACE(d^tblflapply)('Q2',__Name,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(endorse,__User1,__User2,__Skill,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),','(fllibdelayedliteral('!=','LinkedOut.flr',99,[__User1,__User2]),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__User2,__Skill,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),fllibexecute_delayed_calls([__Skill,__User2],[]))),[__User2,__Skill],100,'LinkedOut.flr')),FLORA_THIS_WORKSPACE(d^tblflapply)(user,__User1,__Name,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6))))),null,'_$_$_flora''rule_enabled'(6,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Name,__Skill,__User1,__User2],[__Name]),true)).
?-(fllibinsrulesig(8,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,48,FLORA_THIS_WORKSPACE(d^tblflapply)('Q3',>(__Name1,__Name2),'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id1,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id2,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),','(fllibdelayedliteral('!=','LinkedOut.flr',111,[__Id1,__Id2]),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id2,__newquantvar6,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8)),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id1,__newquantvar6,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8)),fllibexecute_delayed_calls([__Id1,__newquantvar6],[]))),[__Id1,__newquantvar6],112,'LinkedOut.flr'))),fllibexecute_delayed_calls([__Id1,__Id2,__newquantvar6],[]))),[__Id2,__Id1,__Id1,__Id1],112,'LinkedOut.flr')),','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id1,__newquantvar8,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,8)),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id2,'Skill','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,8)),fllibexecute_delayed_calls([__Id2],[]))),[__Id2],113,'LinkedOut.flr'))))))),null,'_$_$_flora''rule_enabled'(8,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Id1,__Id2,__Name1,__Name2],[__Name1,__Name2]),true)).
?-(fllibinsrulesig(10,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,49,FLORA_THIS_WORKSPACE(d^tblflapply)('Q4',>(__Name1,__Name2),'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id1,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id2,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),','(','(fllibcount(__newdontcarevar5,[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id1,__newdontcarevar5,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10)),fllibexecute_delayed_calls([__Id1,__newdontcarevar5],[])),__newvar6),fllibcount(__newdontcarevar8,[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id2,__newdontcarevar8,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,10)),fllibexecute_delayed_calls([__Id2,__newdontcarevar8],[])),__newvar9)),fllibdelayedliteral(>,'LinkedOut.flr',121,[__newvar6,__newvar9])))),null,'_$_$_flora''rule_enabled'(10,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Id1,__Id2,__Name1,__Name2],[__Name1,__Name2]),true)).
?-(fllibinsrulesig(12,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,50,FLORA_THIS_WORKSPACE(d^tblflapply)('Q4_alt',+(__Name1,__Name2),'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id1,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id2,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),','(fllibdelayedliteral('!=','LinkedOut.flr',127,[__Id1,__Id2]),','(','(fllibcount(__newdontcarevar5,[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id1,__newdontcarevar5,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),fllibexecute_delayed_calls([__Id1,__newdontcarevar5],[])),__newvar6),fllibcount(__newdontcarevar8,[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(skill,__Id2,__newdontcarevar8,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,12)),fllibexecute_delayed_calls([__Id2,__newdontcarevar8],[])),__newvar9)),=(__newvar6,__newvar9))))),null,'_$_$_flora''rule_enabled'(12,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Id1,__Id2,__Name1,__Name2],[__Name1,__Name2]),true)).
?-(fllibinsrulesig(14,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,51,FLORA_THIS_WORKSPACE(d^tblflapply)('Q4_alt2',+(__Name1,__Name2),'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)('Q4_alt',+(__Name1,__Name2),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),@<(__Name1,__Name2)),null,'_$_$_flora''rule_enabled'(14,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(16,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,52,FLORA_THIS_WORKSPACE(d^tblflapply)(avgNumberOfEndorsements,__AvgNumEndorsements,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','(fllibavg(__newdontcarevar9,[],','(','(fllibcount(__newdontcarevar6,[__User],','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(endorse,__newdontcarevar2,__User,__newdontcarevar3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),=(__newdontcarevar6,1)),fllibexecute_delayed_calls([__newdontcarevar6,__User,__newdontcarevar5],[])),__newvar7),=(__newdontcarevar9,__newvar7)),fllibexecute_delayed_calls([__newdontcarevar9,__User,__newdontcarevar8],[])),__newvar10),=(__newvar10,__AvgNumEndorsements)),null,'_$_$_flora''rule_enabled'(16,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__AvgNumEndorsements,__User,__newdontcarevar11],[__AvgNumEndorsements]),true)).
?-(fllibinsrulesig(18,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,53,FLORA_THIS_WORKSPACE(d^tblflapply)('Q5',__AvgNumEndorsements,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(avgNumberOfEndorsements,__AvgNumEndorsements,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),null,'_$_$_flora''rule_enabled'(18,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(20,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,54,FLORA_THIS_WORKSPACE(d^tblflapply)('Q6',+(+(__Name,__Endorsements),__AvgNumEndorsements),'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id,__Name,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(avgNumberOfEndorsements,__AvgNumEndorsements,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,20)),','(','(fllibcount(__newdontcarevar8,[],','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(endorse,__newdontcarevar4,__Id,__newdontcarevar5,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,20)),=(__newdontcarevar8,1)),fllibexecute_delayed_calls([__newdontcarevar8,__Id,__newdontcarevar7],[])),__newvar9),=(__Endorsements,__newvar9)),fllibdelayedliteral(<,'LinkedOut.flr',156,[__AvgNumEndorsements,__Endorsements])))),null,'_$_$_flora''rule_enabled'(20,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__AvgNumEndorsements,__Endorsements,__Id,__Name,__newdontcarevar10],[__AvgNumEndorsements,__Endorsements,__Name]),true)).
?-(fllibinsrulesig(22,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,55,FLORA_THIS_WORKSPACE(d^tblflapply)('Q7',-(__Name1,__Name2),'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(indirectly_endorsed,__Name1,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(directly_endorsed,__Name1,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,22)),fllibexecute_delayed_calls([__Name1,__Name2],[]))),[__Name1,__Name2],164,'LinkedOut.flr')),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_unnumber_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(indirectly_endorsed,__Name2,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,22)),fllibexecute_delayed_calls([__Name1,__Name2],[]))),[__Name2,__Name1],165,'LinkedOut.flr')))),null,'_$_$_flora''rule_enabled'(22,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(24,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,56,FLORA_THIS_WORKSPACE(d^tblflapply)(directly_endorsed,__Name1,__Name2,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id1,__Name1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(user,__Id2,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,24)),FLORA_THIS_WORKSPACE(d^tblflapply)(endorse,__Id1,__Id2,__newdontcarevar4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,24)))),null,'_$_$_flora''rule_enabled'(24,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Id1,__Id2,__Name1,__Name2,__newdontcarevar6],[__Name1,__Name2]),true)).
?-(fllibinsrulesig(26,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,57,FLORA_THIS_WORKSPACE(d^tblflapply)(indirectly_endorsed,__Name1,__Name2,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(directly_endorsed,__Name1,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),null,'_$_$_flora''rule_enabled'(26,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(28,'LinkedOut.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,58,FLORA_THIS_WORKSPACE(d^tblflapply)(indirectly_endorsed,__Name1,__Name2,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(directly_endorsed,__Name1,__Name3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),FLORA_THIS_WORKSPACE(d^tblflapply)(indirectly_endorsed,__Name3,__Name2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,28))),null,'_$_$_flora''rule_enabled'(28,'LinkedOut.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Name1,__Name2,__Name3],[__Name1,__Name2]),true)).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 1: endorsement by a co-worker ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q1',__User1,__User2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?User1',__User1),=('?User2',__User2)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 2: Bogus endorsements ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q2',__Name,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?Name',__Name)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 3: Strictly more skilled users ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q3',__Pair,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?Pair',__Pair)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 4: Numerically more skilled users ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q4',__Pair,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?Pair',__Pair)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 5: Average number of endorsements ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q5',__AvgNumberOfEndorsements,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?AvgNumberOfEndorsements',__AvgNumberOfEndorsements)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 6: Users with > than average # of endorsements ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q6',__Answer,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?Answer',__Answer)])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(writeln,'--- Query 7: Endorsements with no reciprocity ---','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)('Q7',__Answer,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[=('?Answer',__Answer)])).

 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS2_FILENAME  'LinkedOut.fls2'
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

