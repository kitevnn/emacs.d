;; =======================================
;; 快速输入片段 zprogramming-snips-yasnippet.el
;; =======================================
(use-package yasnippet
             :ensure t
             :demand
             :hook
             (LaTeX-mode . yas-global-mode))

(use-package yasnippet-snippets
             :ensure t)


(provide 'zprogramming-snips-yasnippet)
