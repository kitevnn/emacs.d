;; ========================================
;; IM设置 im-telega.el (zevlg, Thank you!)
;; ========================================
(use-package telega
  :ensure t
  :defer t
  :init
  (setq telega-avatar-workaround-gaps-for '(return t)))

(use-package visual-fill-column
  :ensure t
  :defer nil)
(use-package rainbow-identifiers
  :ensure t
  :defer nil)


(provide 'im-telega)
