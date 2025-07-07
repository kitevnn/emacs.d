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

;; 解决dirvish的C-n下跳两行的问题(from DeepSeek V3)
(with-eval-after-load 'dirvish
  (advice-add 'dired-next-line :override
              (lambda (&optional arg)
                (next-line (or arg 1)))))


(provide 'enhance-dirvish)
