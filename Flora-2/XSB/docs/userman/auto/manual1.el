(TeX-add-style-hook "manual1"
 (lambda ()
    (LaTeX-add-index-entries
     "\\texttt{#1}"
     "\\texttt{#2}")
    (LaTeX-add-bibliographies
     "longstring"
     "manual")
    (LaTeX-add-environments
     "example"
     "exercise"
     "proposition"
     "Prog")
    (TeX-add-symbols
     '("code" 1)
     '("refexer" 1)
     '("refexam" 1)
     '("refsec" 1)
     '("refchap" 1)
     '("comment" 1)
     '("stuff" 1)
     '("ourusage" 1)
     '("ourisousageitem" 2)
     '("ourusageitem" 1)
     '("ournewmoditem" 2)
     '("altourmoditem" 3)
     '("ouroldmoditem" 2)
     '("ourrepeatmoditem" 3)
     '("ourmoditem" 3)
     '("ournewitem" 2)
     '("ournewrepeatitem" 2)
     '("ourrepeatitem" 1)
     '("ouritem" 1)
     '("ourrepeatstandarditem" 3)
     '("ourstandarditem" 3)
     '("repeatstandarditem" 2)
     '("standarditem" 2)
     '("isorepeatitem" 2)
     '("isoitem" 2)
     '("predrefindex" 1)
     '("stdrefindex" 1)
     '("desce" 1)
     '("desc" 1)
     '("demo" 1)
     '("mt" 1)
     "fillBox"
     "compatibility"
     "portability"
     "dashdashgreater"
     "ourprolog"
     "smallourprolog"
     "version"
     "LRD"
     "longline"
     "newsched"
     "Newsched"
     "NewSched"
     "Oldsched"
     "OldSched"
     "oldsched"
     "localsched"
     "Localsched"
     "LocalSched"
     "bi"
     "ei"
     "cA"
     "cG"
     "cO"
     "cS"
     "cT"
     "mif"
     "xsblogo"
     "cut"
     "not")
    (TeX-run-style-hooks
     "CJK"
     "graphicx"
     "longtable"
     "ecltree"
     "epic"
     "alltt"
     "url"
     "hyperref"
     "colorlinks"
     "imakeidx"
     "amssymb"
     "xspace"
     "latexsym"
     "subfigure"
     "epsfig"
     "epsf"
     "fontenc"
     "T1"
     "lmodern"
     ""
     "latex2e"
     "rep12"
     "report"
     "12pt"
     "credits1"
     "intro"
     "quick_start"
     "system"
     "syntax"
     "tables"
     "builtin"
     "state"
     "rbltin"
     "table_builtins"
     "threads"
     "tries"
     "hooks"
     "debugging"
     "dcg"
     "exceptions"
     "foreign"
     "ccallingxsb"
     "library"
     "restrict"
     "gpp")))

