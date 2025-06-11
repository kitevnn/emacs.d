;; =======================================
;; 补全框架 enhance-corfu.el
;; =======================================


;; =======================================
;; 轻量补全本体
;; =======================================
(use-package corfu
  :config
  (setq corfu-auto t
        corfu-cycle t
        corfu-quit-at-boundary t
        corfu-quit-no-match t
        corfu-preview-current nil
        corfu-min-width 20
        corfu-max-width 100
        corfu-auto-delay 0.2
        corfu-auto-prefix 1
        corfu-on-exact-match nil)
  :hook
  ((shell-mode      . corfu-mode)
  (eshell-mode      . corfu-mode)
  (LaTeX-mode       . corfu-mode)
  (latex-mode       . corfu-mode)
  (emacs-lisp-mode  . corfu-mode)))


;; =======================================
;; corfu图标设置
;; =======================================
(with-eval-after-load 'corfu
  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))


(provide 'zprogramming-cmp-corfu)
