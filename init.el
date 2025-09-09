;; =======================================
;;
;; 路径加载
;;
;; =======================================
(add-to-list 'load-path
             (expand-file-name
              (concat user-emacs-directory "elisp/basic")))
(require 'basic-path)
(require 'basic-vari)


;; =======================================
;;
;; 模块加载
;;
;; =======================================
(require 'custom-defun)
(require 'basic-elpa)
(require 'basic-init)
(require 'basic-mode)
(require 'enhance-cdlatex)
(require 'enhance-deadgrep)
(require 'enhance-dirvish)
(require 'enhance-minibuffer)
(require 'enhance-indentline)
(require 'enhance-magit)
;(require 'enhance-pdftools)
(require 'enhance-restart)
(require 'enhance-smartparens)
(require 'enhance-tabs)
(require 'enhance-term)
(require 'enhance-history)
(require 'enhance-rime)
(require 'enhance-evil)
(require 'music-emms)
(require 'ui-font-sauce-source)
(require 'ui-icon-nerdfont)
(require 'ui-theme-light)
(require 'ui-theme-dark)
(require 'ui-decorate-dashboard)
(require 'ui-modeline-bar)
(require 'note-auctex)
(require 'note-orgmode)
(require 'note-denote)
(require 'zprogramming-cmp-corfu)
(require 'zprogramming-lsp-eglot)
(require 'zprogramming-snips-yasnippet)
(require 'zprogramming-ts-treesitter)
(require 'im-telega-proxies)
(require 'im-telega)
(require 'key-keybindings)

;; =======================================
;;
;; 钩子加载
;;
;; =======================================
(require 'hooks-hook)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f4e656aa769656d3e05365ce0d7d5562229f892b5c4143c55b5bda36b954df5f"
     "1781e8bccbd8869472c09b744899ff4174d23e4f7517b8a6c721100288311fa5"
     "3001510be1be4a38508ff07633e97b810c0a52c6fa2f4c7153d22cc7596d9172"
     "e7820b899036ae7e966dcaaec29fd6b87aef253748b7de09e74fdc54407a7a02" default))
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(corfu-border ((t (:background "#37474f"))))
 '(corfu-current ((t (:background "#cfd8dc" :foreground "#37474f"))))
 '(corfu-default ((t (:background "#ffffff"))))
 '(dirvish-hl-line ((t (:background "#cfd8dc" :foreground "#37474f"))))
 '(isearch-fail ((t (:foreground "#37474f" :background "#ffffff"))))
 '(org-agenda-current-time ((t (:background "#ffffff" :foreground "#673ab7"))))
 '(org-agenda-date ((t (:background "#ffffff" :foreground "#673ab7"))))
 '(org-agenda-date-today ((t (:background "#cfd8dc" :foreground "#37474f"))))
 '(org-agenda-structure ((t (:background "#37474f" :foreground "#ffffff"))))
 '(org-date ((t (:foreground "#a5acaf"))))
 '(org-default ((t (:background "#ffffff" :foreground "#37474f"))))
 '(org-imminent-deadline ((t (:background "#ffffff" :foreground "#37474f"))))
 '(org-scheduled-previously ((t (:background "#ffffff" :foreground "#cfd8dc"))))
 '(org-scheduled-today ((t (:background "#ffffff" :foreground "#000000"))))
 '(org-special-keyword ((t (:foreground "#a5acaf"))))
 '(org-time-grid ((t (:background "#ffffff" :foreground "#37474f"))))
 '(org-todo ((t (:background "#ffffff" :foreground "#673ab7"))))
 '(org-upcoming-deadline ((t (:background "#ffffff" :foreground "#673ab7"))))
 '(region ((t (:background "#eceff1"))))
 '(telega-msg-heading ((t (:background "#ffffff" :extend nil))))
 '(vertico-current ((t (:background "#b5ffd1"))))
 '(vertico-group-separator ((t (:background "#37474f" :foreground "#ffffff"))))
 '(vertico-group-title ((t (:background "#37474f" :foreground "#ffffff"))))
 '(vertico-posframe ((t (:background "#ffffff" :foreground "#37474f")))))
