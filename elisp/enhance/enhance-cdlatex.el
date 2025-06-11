;; ========================================
;; 快速输入数学符号 enhance-cdlatex.el
;; ========================================
(use-package cdlatex
  :ensure t
  :defer nil
  :after tex-site
  :bind (:map cdlatex-mode-map
              ("<tab>" . cdlatex-tab))
  :init
  (setq cdlatex-paired-parens "")
  (setq cdlatex-use-dollar-to-ensure-math nil)

  ;; ==================================
  ;; cdlatex的TAB补全
  ;; ==================================
  (setq cdlatex-command-alist
    '(("Bm" "" "\\begin{Bmatrix}  ? \\end{Bmatrix}" cdlatex-position-cursor nil nil t)
      ("vm" "" "\\begin{vmatrix}  ? \\end{vmatrix}" cdlatex-position-cursor nil nil t)
      ("bm" "" "\\begin{bmatrix}  ? \\end{bmatrix}" cdlatex-position-cursor nil nil t)
      ("ay" "" "\\left[\\begin{array}{?}   \\end{array}\\right]" cdlatex-position-cursor nil nil t)
      ("1a2" "" "? &  " cdlatex-position-cursor nil nil t)
      ("1a3" "" "? &  &  " cdlatex-position-cursor nil nil t)
      ("1a4" "" "? &  &  &  " cdlatex-position-cursor nil nil t)
      ("1a5" "" "? &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("2a1" "" "? \\\\  " cdlatex-position-cursor nil nil t)
      ("2a2" "" "? &  \\\\  &  " cdlatex-position-cursor nil nil t)
      ("2a3" "" "? &  &  \\\\  &  &  " cdlatex-position-cursor nil nil t)
      ("2a4" "" "? &  &  &  \\\\  &  &  &  " cdlatex-position-cursor nil nil t)
      ("2a5" "" "? &  &  &  &  \\\\  &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("2a6" "" "? &  &  &  &  &  \\\\  &  &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("3a1" "" "? \\\\  \\\\  " cdlatex-position-cursor nil nil t)
      ("3a2" "" "? &  \\\\  &  \\\\  &  " cdlatex-position-cursor nil nil t)
      ("3a3" "" "? &  &  \\\\  &  &  \\\\  &  &  " cdlatex-position-cursor nil nil t)
      ("3a4" "" "? &  &  &  \\\\  &  &  &  \\\\  &  &  &  " cdlatex-position-cursor nil nil t)
      ("3a5" "" "? &  &  &  &  \\\\  &  &  &  &  \\\\  &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("3a6" "" "? &  &  &  &  &  \\\\  &  &  &  &  &  \\\\  &  &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("4a1" "" "? \\\\  \\\\  \\\\  " cdlatex-position-cursor nil nil t)
      ("4a2" "" "? &  \\\\  &  \\\\  &  \\\\  &  " cdlatex-position-cursor nil nil t)
      ("4a3" "" "? &  &  \\\\  &  &  \\\\  &  &  \\\\  &  &  " cdlatex-position-cursor nil nil t)
      ("4a4" "" "? &  &  &  \\\\  &  &  &  \\\\  &  &  &  \\\\  &  &  &  " cdlatex-position-cursor nil nil t)
      ("4a5" "" "? &  &  &  &  \\\\  &  &  &  &  \\\\  &  &  &  &  \\\\  &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("4a6" "" "? &  &  &  &  &  \\\\  &  &  &  &  &  \\\\  &  &  &  &  &  \\\\  &  &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("5a1" "" "? \\\\  \\\\  \\\\  \\\\  " cdlatex-position-cursor nil nil t)
      ("5a2" "" "? &  \\\\  &  \\\\  &  \\\\  &  \\\\  &   " cdlatex-position-cursor nil nil t)
      ("5a3" "" "? &  &  \\\\  &  &  \\\\  &  &  \\\\  &  &  \\\\  &  &  " cdlatex-position-cursor nil nil t)
      ("5a4" "" "? &  &  &  \\\\  &  &  &  \\\\  &  &  &  \\\\  &  &  &  \\\\  &  &  &  " cdlatex-position-cursor nil nil t)
      ("5a5" "" "? &  &  &  &  \\\\  &  &  &  &  \\\\  &  &  &  &  \\\\  &  &  &  &  \\\\  &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("5a6" "" "? &  &  &  &  &  \\\\  &  &  &  &  &  \\\\  &  &  &  &  &  \\\\  &  &  &  &  &  \\\\  &  &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("6a1" "" "? \\\\  \\\\  \\\\  \\\\  \\\\  " cdlatex-position-cursor nil nil t)
      ("6a2" "" "? &  \\\\  &  \\\\  &  \\\\  &  \\\\  &  \\\\  &  " cdlatex-position-cursor nil nil t)
      ("6a3" "" "? &  &  \\\\  &  &  \\\\  &  &  \\\\  &  &  \\\\  &  &  \\\\  &  &  " cdlatex-position-cursor nil nil t)
      ("6a4" "" "? &  &  &  \\\\  &  &  &  \\\\  &  &  &  \\\\  &  &  &  \\\\  &  &  &  \\\\  &  &  &  " cdlatex-position-cursor nil nil t)
      ("6a5" "" "? &  &  &  &  \\\\  &  &  &  &  \\\\  &  &  &  &  \\\\  &  &  &  &  \\\\  &  &  &  &  \\\\  &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("6a6" "" "? &  &  &  &  &  \\\\  &  &  &  &  &  \\\\  &  &  &  &  &  \\\\  &  &  &  &  &  \\\\  &  &  &  &  &  \\\\  &  &  &  &  &  " cdlatex-position-cursor nil nil t)
      ("ca" "" "\\begin{cases} ? , &  \\end{cases}" cdlatex-position-cursor nil nil t)
      ("ve" "" "\\vert{} ?" cdlatex-position-cursor nil t t)
      ("or" "" "\\overrightarrow{?} " cdlatex-position-cursor nil t t)
      ("ii" "" "\\textit{?} " cdlatex-position-cursor nil t t)
      ("bb" "" "\\textbf{?} " cdlatex-position-cursor nil t t)
      ("mod" "" "\\text{?} " cdlatex-position-cursor nil t t)
      ("dd" "" "\\mathrm{d} ?" cdlatex-position-cursor nil t t)
      ("Bb" "" "\\Box ?" cdlatex-position-cursor nil t t)
      ("ol" "" "\\overline{?} " cdlatex-position-cursor nil nil t)
      ("ae" "" "\\stackrel{ ? }{\\underset{  }{\\xLeftrightarrow{\\hspace{3cm}}}} " cdlatex-position-cursor nil nil t)
      ("al" "" "\\stackrel{ ? }{\\underset{  }{\\xLeftarrow{\\hspace{3cm}}}} " cdlatex-position-cursor nil nil t)
      ("ar" "" "\\stackrel{ ? }{\\underset{  }{\\xRightarrow{\\hspace{3cm}}}} " cdlatex-position-cursor nil nil t)
      ("xe" "" "\\xleftrightarrow[?]{} " cdlatex-position-cursor nil nil t)
      ("xl" "" "\\xleftarrow[?]{} " cdlatex-position-cursor nil nil t)
      ("xr" "" "\\xrightarrow[?]{} " cdlatex-position-cursor nil nil t)
      ("ddl" "" "\\ddots ?" cdlatex-position-cursor nil t t)
      ("vvl" "" "\\vdots ?" cdlatex-position-cursor nil t t)
      ("ccl" "" "\\cdots ?" cdlatex-position-cursor nil t t)
      ("tt" "" "? \\to " cdlatex-position-cursor nil nil t)
      ("liml" "" "\\lim_{? \\to } " cdlatex-position-cursor nil nil t)
      ("intl" "" "\\int_{?}^{} \\mathrm{d} " cdlatex-position-cursor nil nil t)
      ("iintl" "" "\\iint\\limits_{?} \\mathrm{d} " cdlatex-position-cursor nil nil t)
      ("app" "" "\\approx?" cdlatex-position-cursor nil nil t)
      ("co" "" "\\cong" cdlatex-position-cursor nil nil t))))


  ;; ==================================
  ;; cdlatex的`补全
  ;; ==================================
  (setq cdlatex-math-symbol-alist
        '((112 ("" "\\pi"))
          (33 ("\\neq" "" ""))
          (46 ("\\cdot" "\\cdots" "\\ast"))
          (97 ("\\alpha" ""))
          (109 ("\\mu" "" "\\lim"))))


;; ========================================
;; cdlatex的括号匹配
;; ========================================
(defun kivnn/insert-inline-OCDL (prefix)
  (interactive "P")
  (if prefix
      (insert "$")
    (insert (concat variable-latex-fragment-left-bound " "))
    (save-excursion
      (insert (concat " " variable-latex-fragment-right-bound)))))
(eval-after-load 'org
  '(progn
     (define-key org-cdlatex-mode-map (kbd "$") 'kivnn/insert-inline-OCDL)))

(defun kivnn/insert-bra-OCDL ()
  (interactive)
  (insert "(")
  (save-excursion (insert ")")))
(eval-after-load 'org
  '(define-key org-cdlatex-mode-map (kbd "(")   'kivnn/insert-bra-OCDL))

(defun kivnn/insert-sq-bra-OCDL ()
  (interactive)
  (insert "[")
  (save-excursion (insert "]")))
(eval-after-load 'org
  '(define-key org-cdlatex-mode-map (kbd "[")   'kivnn/insert-sq-bra-OCDL))

(defun kivnn/insert-curly-bra-OCDL ()
  (interactive)
  (insert "{")
  (save-excursion (insert "}")))
(eval-after-load 'org
   '(define-key org-cdlatex-mode-map (kbd "{")   'kivnn/insert-curly-bra-OCDL))

(defun kivnn/insert-backquote-OCDL (prefix)
  (interactive "P")
  (if prefix
      (insert "`")
    (cdlatex-math-symbol)))
(eval-after-load 'org
  '(define-key org-cdlatex-mode-map (kbd "`")   'kivnn/insert-backquote-OCDL))


(provide 'enhance-cdlatex)
