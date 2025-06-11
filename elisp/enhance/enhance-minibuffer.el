;; =======================================
;; 迷你显示菜单 enhance-minibuffer.el
;; =======================================
(use-package vertico
  :ensure t
  :defer nil
  :init
  (vertico-mode t))

(use-package orderless
  :ensure t
  :defer nil
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(use-package marginalia
  :ensure t
  :defer nil
  :init
  (marginalia-mode t))

(use-package embark
  :ensure t
  :defer nil
  :init
  (setq prefix-help-command 'embark-prefix-help-command))
(use-package embark-consult
  :ensure t
  :defer nil)
(use-package consult
  :ensure t
  :defer nil)

(use-package posframe
  :ensure t
  :defer t)
(use-package vertico-posframe
  :ensure t
  :defer t
  :init
  (vertico-posframe-mode 1))
(setq vertico-posframe-height 11)
(setq vertico-posframe-width 120)


(provide 'enhance-minibuffer)
