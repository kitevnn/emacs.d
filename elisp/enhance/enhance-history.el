;; ========================================
;; 光标历史记录 enhance-history.el
;; ========================================
(use-package savehist
  :ensure t
  :defer nil
  :hook (after-init . savehist-mode)
  :init (setq enable-recursive-minibuffers t
              history-length 1000
              savehist-additional-variables '(mark-ring
                                              global-mark-ring
                                              search-ring
                                              regexp-search-ring
                                              extended-command-history)
              savehist-autosave-interval 300))

(use-package saveplace
  :ensure t
  :defer nil
  :hook (after-init . save-place-mode))


(provide 'enhance-history)
