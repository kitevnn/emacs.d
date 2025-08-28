;; =======================================
;; emacs-rime输入法 enhance-rime.el
;; =======================================
(use-package rime
  :ensure t
  :defer nil
  :custom
  (default-input-method "rime")
  :init
  (setq rime-title
        (concat " " "双" " ")))


(provide 'enhance-rime)
