;; ========================================
;; 音乐播放器 music-emms.el
;; ========================================
(use-package emms
  :ensure t
  :defer t
  :config
  (require 'emms-setup)
  (emms-all)
  ;; mpv 音乐播放器
  (setq emms-player-list '(emms-player-mpv))
  (setq emms-source-file-default-directory directory-music)
  (setq emms-info-asynchronously t))


;; ========================================
;; 切换到主界面emms，并立刻在起初停止播放
;; ========================================
(advice-add 'emms-play-directory :after
            (lambda (&rest _)
              (emms)
              (run-at-time 0.5 nil #'emms-pause)))


(provide 'music-emms)
