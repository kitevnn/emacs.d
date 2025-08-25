;; ========================================
;; 欢迎界面 ui-decorate-dashboard.el
;; ========================================
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  :init
  (setq dashboard-banner-logo-title "p😭q 真正的编辑器: GNU Emacs"
        dashboard-startup-banner    (concat directory-emacs-archive "dashboard-zoom-out-light.png")
        dashboard-center-content t
        dashboard-vertically-center-content t
        dashboard-show-shortcuts nil)
  (setq dashboard-set-navigator t)
  ;; 自定义按钮
  (setq dashboard-navigator-buttons
        `(((,"  最近 R" "" (lambda (&rest _) (consult-recent-file)) nil "")
           (,"  书签 B" "" (lambda (&rest _) (bookmark-bmenu-list)) nil "")
           (,"󱇘  议程 A" "" (lambda (&rest _) (org-agenda)) nil ""))))
  ;; 自定义板幅
  (setq dashboard-startupify-list '(dashboard-insert-newline
                                    dashboard-insert-banner
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-banner-title
                                    dashboard-insert-newline
                                    dashboard-insert-navigator
                                    dashboard-insert-newline
                                    dashboard-insert-init-info
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline
                                    dashboard-insert-newline))
    ;; 开启最近文件功能，并设置为最多100个最近文件
    (recentf-mode 1)
    (setq recentf-max-saved-items 100)
    (dashboard-open))


(with-eval-after-load 'dashboard
  (define-key dashboard-mode-map (kbd "R") #'consult-recent-file)
  (define-key dashboard-mode-map (kbd "B") #'bookmark-bmenu-list)
  (define-key dashboard-mode-map (kbd "A") #'org-agenda-list))


(provide 'ui-decorate-dashboard)
