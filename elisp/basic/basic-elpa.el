;; =======================================
;; 源设置 basic-elpa.el
;; =======================================
(use-package package
  :init
  (setq package-archives
        '(("melpa" . "https://melpa.org/packages/")
          ("gnu" . "https://elpa.gnu.org/packages/")
          ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
  (setq package-enable-at-startup nil)
  (setq use-package-expand-minimally t
        use-package-verbose t)
  :autoload
  (package-initialize))


(provide 'basic-elpa)
