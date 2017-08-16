(TeX-add-style-hook
 "knitr_example"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("vietnam" "utf8")))
   (TeX-run-style-hooks
    "vietnam"))
 :latex)

