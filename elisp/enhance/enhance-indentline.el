;; =======================================
;; 缩进线 enhance-indentline.el
;; =======================================
(use-package highlight-indent-guides
             :ensure t
             :defer t
             :init
             (setq highlight-indent-guides-method 'column)
             :hook
             (prog-mode     .    highlight-indent-guides-mode))


(provide 'enhance-indentline)
