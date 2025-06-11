;; =======================================
;; 标签页 enhance-tabs.el
;; =======================================
(use-package centaur-tabs
  :ensure t
  :defer nil
  :demand
  :config
  (centaur-tabs-mode t)
  :init
  (setq centaur-tabs-style "box"
        centaur-tabs-height 9
        centaur-tabs-set-icons t
        centaur-tabs-plain-icons t
        centaur-tabs-gray-out-icons 'buffer
        centaur-tabs-set-bar 'left
        centaur-tabs-set-close-button nil
        centaur-tabs-close-button "X"
        centaur-tabs-set-modified-marker t
        centaur-tabs-modified-marker "*"
        centaur-tabs-cycle-scope 'tabs
        centaur-tabs-label-fixed-length 15)
  ;; 禁用centaur-tabs-local-mode
  :hook
  (dired-mode . centaur-tabs-local-mode))


(provide 'enhance-tabs)
