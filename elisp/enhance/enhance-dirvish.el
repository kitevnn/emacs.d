;; ========================================
;; 左侧文件树工具 enhance-dirvish.el
;; ========================================
(use-package dirvish
  :ensure t
  :defer t
  :init
  (dirvish-override-dired-mode)
  (dirvish-side-follow-mode)
  (setq dirvish-mode-line-format '(:left (sort symlink) :right (omit yank index))
        dirvish-mode-line-height 16
        dirvish-header-line-height 9
        delete-by-moving-to-trash t
        dired-listing-switches "-l --almost-all --human-readable --group-directories-first --no-group"))


(provide 'enhance-dirvish)
