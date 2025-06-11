;; ========================================
;; 图标设置 ui-icon-nerdfont.el
;; ========================================
(use-package nerd-icons
  :ensure t
  :custom (nerd-icons-font-family "Symbols Nerd Font Mono"))

(use-package nerd-icons-corfu
  :ensure t
  :init)

(use-package nerd-icons-dired
  :ensure t
  :hook
  (dired-mode . nerd-icons-dired-mode))

(use-package nerd-icons-ibuffer
  :ensure t
  :defer t
  :hook (ibuffer-mode . nerd-icons-ibuffer-mode))

(use-package nerd-icons-completion
  :ensure t
  :defer nil
  :config
  (nerd-icons-completion-mode))


(provide 'ui-icon-nerdfont)
