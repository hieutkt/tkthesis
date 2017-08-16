(TeX-add-style-hook
 "tkthesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("report" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("scrextend" "fontsize=13pt") ("vietnam" "utf8") ("placeins" "section") ("caption" "justification=centering") ("hyperref" "colorlinks=true" "citecolor=blue" "linkcolor=blue") ("hypcap" "all") ("biblatex" "backend=bibtex" "sorting=ydnt" "style=authoryear")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "report"
    "rep10"
    "scrextend"
    "vietnam"
    "listings"
    "mathptmx"
    "etoolbox"
    "indentfirst"
    "fancyhdr"
    "titlesec"
    "titletoc"
    "placeins"
    "caption"
    "hyperref"
    "hypcap"
    "biblatex")
   (LaTeX-add-environments
    '("labeling" LaTeX-env-args ["argument"] 1)))
 :latex)

