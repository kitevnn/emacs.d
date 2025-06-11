;; ========================================
;; mode-line设置 ui-modeline-bar.el
;; ========================================
(defvar modeline-calendar-month "")
(defvar modeline-calendar-day "")
(defvar modeline-calendar-week "")
(defvar modeline-time-hour "")
(defvar modeline-time-minute "")
(defvar modeline-battery-percentage "")
(defvar modeline-distribution "")
(defvar modeline-disk-usage "")
(defvar modeline-cpu-temperature "")
(defvar modeline-ram-usage "")
(defvar modeline-pacman-packages "")
(defvar modeline-weather-situation "")
(defvar modeline-agenda-todo-count 0)
(defvar modeline-agenda-doing-count 0)
(defvar modeline-agenda-wait-count 0)
(defvar modeline-agenda-file-name "")
(defvar modeline-emacs-uptime "")
(defvar modeline-keybinding-style " emacs-style")


;; ========================================
;; 关于当前日期
;; ========================================
(defun kivnn/update-modeline-calendar-month ()
  (setq modeline-calendar-month (concat (format-time-string "%m") "月")))
(defun kivnn/update-modeline-calendar-day ()
  (setq modeline-calendar-day (concat (format-time-string "%d") "日")))
(defun kivnn/update-modeline-calendar-week ()
  (setq modeline-calendar-week
        (concat "星期" (let* ((weekday-num (string-to-number (format-time-string "%u")))
                              (weekday-chinese "一二三四五六日"))
                         (string (aref weekday-chinese (1- weekday-num)))))))
;; ========================================
;; 关于当前时间
;; ========================================
(defun kivnn/update-modeline-time-hour ()
  (setq modeline-time-hour (format-time-string "%H")))
(defun kivnn/update-modeline-time-minute ()
  (setq modeline-time-minute (format-time-string "%M")))
;; ========================================
;; 关于电池信息
;; ========================================
(defun kivnn/update-modeline-battery-percentage ()
  (setq modeline-battery-percentage
        (string-trim
         (shell-command-to-string
          (concat user-emacs-directory directory-modeline-path-suffix "battery-percentage.sh")))))
;; ========================================
;; 关于发行版信息
;; ========================================
(defun kivnn/update-modeline-distribution ()
  (setq modeline-distribution
        (string-trim
         (shell-command-to-string
          (concat user-emacs-directory directory-modeline-path-suffix "distribution.sh")))))
(defun kivnn/update-modeline-pacman-packages ()
  (setq modeline-pacman-packages
        (string-trim
         (shell-command-to-string
          (concat user-emacs-directory directory-modeline-path-suffix "pacman-packages.sh")))))
;; ========================================
;; 关于使用率
;; ========================================
(defun kivnn/update-modeline-disk-usage ()
  (setq modeline-disk-usage
        (string-trim
         (shell-command-to-string
          (concat user-emacs-directory directory-modeline-path-suffix "disk-usage.sh")))))
(defun kivnn/update-modeline-cpu-temperature ()
  (setq modeline-cpu-temperature
        (string-trim
         (shell-command-to-string
          (concat user-emacs-directory directory-modeline-path-suffix "cpu-temperature.sh")))))
(defun kivnn/update-modeline-ram-usage ()
  (setq modeline-ram-usage
        (string-trim
         (shell-command-to-string
          (concat user-emacs-directory directory-modeline-path-suffix "ram-usage.sh")))))
;; ========================================
;; 关于当地天气
;; ========================================
(defun kivnn/update-modeline-weather-situation ()
  (setq modeline-weather-situation
        (string-trim
         (shell-command-to-string
          (concat user-emacs-directory directory-modeline-path-suffix "weather-situation.sh")))))
;; ========================================
;; 关于议程
;; ========================================
(defun kivnn/count-agenda-file-tasks (file-path)
  "更新指定路径议程文件的agenda信息"
  (interactive)
  (setq modeline-agenda-todo-count 0)
  (setq modeline-agenda-doing-count 0)
  (setq modeline-agenda-wait-count 0)
  (setq modeline-agenda-file-name (file-name-nondirectory file-path))
  ;; 打开临时buffer
  (with-temp-buffer
    (insert-file-contents file-path)
    (goto-char (point-min))
    (while (re-search-forward org-heading-regexp nil t)
      (let ((headline (match-string 0)))
        (cond
         ((string-match-p "\\*+ TODO" headline) (setq modeline-agenda-todo-count (1+ modeline-agenda-todo-count)))
         ((string-match-p "\\*+ DOING" headline) (setq modeline-agenda-doing-count (1+ modeline-agenda-doing-count)))
         ((string-match-p "\\*+ WAIT" headline) (setq modeline-agenda-wait-count (1+ modeline-agenda-wait-count))))))))
(defun kivnn/update-modeline-agenda-file-tasks ()
  "统计指定文件2025.org的任务"
  (kivnn/count-agenda-file-tasks file-org-agenda-files))
;; ========================================
;; 累计总时长
;; ========================================
(defun kivnn/update-modeline-emacs-uptime ()
  (setq modeline-emacs-uptime
        (let ((uptime-text
               (string-trim
                (shell-command-to-string
                 (concat user-emacs-directory directory-site-lisp "calculate-uptime.sh")))))
          (if (string-match "Accompanying With GNU Emacs: \\([0-9]+\\) hours, \\([0-9]+\\) minutes, \\([0-9]+\\) seconds" uptime-text)
              (format "%sh %sm" (match-string 1 uptime-text) (match-string 2 uptime-text))))))
;; ========================================
;; 音乐播放器
;; ========================================
(defun kivnn/format-emms-mode-line ()
  "格式化 emms-mode-line-string 来提取音乐纯文件名"
  (interactive)
  (when (stringp emms-mode-line-string)
    ;; 去掉属性
    (let* ((clean-str (substring-no-properties emms-mode-line-string)))
      (when (string-match ".*/\\([^/]+\\) ]" clean-str)
        (setq emms-mode-line-string
              ;; 去掉后缀 ".mp3"
              (replace-regexp-in-string "\\.mp3$" "" (match-string 1 clean-str)))))))
(add-hook 'emms-player-started-hook #'kivnn/format-emms-mode-line)
(add-hook 'emms-player-started-hook #'kivnn/update-modeline-all-information :append)
;; ========================================
;; 模式信息
;; ========================================
(defun kivnn/update-modeline-modes ()
  "定时更新模式信息，并只显示在仪表盘上"
  (setq modeline-modes
        (format-mode-line mode-line-modes)))
;; ========================================
;; 按键风格
;; ========================================
(setq evil-mode-line-format nil)
(defun kivnn/update-modeline-style-based-on-evil-mode (&rest _)
  "监听根据 evil-mode 的状态，即时更新 kivnn/current-style 变量"
  (setq modeline-keybinding-style
        (if evil-mode " vim-motion" " emacs-style"))
  (force-mode-line-update))
(advice-add 'evil-mode :after #'kivnn/update-modeline-style-based-on-evil-mode)


;; ========================================
;; 定期更新变量数据
;; ========================================
(run-at-time "0 sec" 86400 'kivnn/update-modeline-calendar-month)      ; 每24小时更新一次日历月份信息
(run-at-time "0 sec" 43200 'kivnn/update-modeline-calendar-day)        ; 每12小时更新一次日历日数信息
(run-at-time "0 sec" 43200 'kivnn/update-modeline-calendar-week)       ; 每12小时更新一次当前星期信息
(run-at-time "0 sec" 1800  'kivnn/update-modeline-weather-situation)   ; 每30分钟更新一次当前天气信息
(run-at-time "0 sec" 86400 'kivnn/update-modeline-distribution)        ; 每1天更新一次发行版信息
(run-at-time "0 sec" 86400 'kivnn/update-modeline-disk-usage)          ; 每1天更新一次磁盘使用量信息
(run-at-time "0 sec" 43200 'kivnn/update-modeline-pacman-packages)     ; 每12小时更新一次包总数信息
(run-at-time "0 sec" 120   'kivnn/update-modeline-battery-percentage)  ; 每2分钟更新一次电池信息
(run-at-time "0 sec" 15    'kivnn/update-modeline-cpu-temperature)     ; 每15秒更新一次CPU温度信息
(run-at-time "0 sec" 15    'kivnn/update-modeline-ram-usage)           ; 每15秒更新一次内存使用量信息
(run-at-time "0 sec" 86400 'kivnn/update-modeline-emacs-uptime)        ; 每24小时更新一次累计使用总时长
(run-at-time "0 sec" 180   'kivnn/update-modeline-time-hour)           ; 每3分钟更新一次时间小时信息
(run-at-time "0 sec" 60    'kivnn/update-modeline-time-minute)         ; 每1分钟更新一次时间分钟信息
(run-at-time "0 sec" 1800  'kivnn/update-modeline-agenda-file-tasks)   ; 每30分钟更新一次tasks任务信息


;; ========================================
;; 关于modeline
;; ========================================
(defun kivnn/update-modeline-with-all-scripts ()
  "手动搓出modeline信息"
  ;;; 变量modeline信息放外边setq
  (setq kivnn/mode-line-modified
        '(:eval (cond (buffer-read-only "%")
                      ((buffer-modified-p) "*")
                      (t "-"))))
  (setq kivnn/mode-line-position
        '(:eval
          (let* ((percent (format-mode-line "%p"))
                 (line (format-mode-line "%l"))
                 (col (format-mode-line "%c"))
                 (safe-percent (replace-regexp-in-string "%" "%%" percent)))
            (format "%s,%s(%s)" line col safe-percent))))
  (setq kivnn/mode-line-agenda-info
        (list
         " "
         (format "󰄒 TODO %d " modeline-agenda-todo-count)
         (format "󱞿 DOING %d " modeline-agenda-doing-count)
         (format "󰝕 WAIT %d " modeline-agenda-wait-count)
         "-  "
         modeline-agenda-file-name))
  ;;; 常量modeline信息放里面setq-default
  (setq-default mode-line-format
                (list
                 ;; 左对齐
                 '(:eval mode-line-mule-info)
                 '(:eval kivnn/mode-line-modified)
                 "  "
                 '(:eval mode-line-buffer-identification)
                 '(:eval (when vc-mode vc-mode))
                 "   "
                 '(:eval (format "%s" modeline-calendar-month))
                 '(:eval (format "%s" modeline-calendar-day))
                 "("
                 '(:eval (format "%s" modeline-calendar-week))
                 ")"
                 "   "
                 '(:eval (format "%s" modeline-time-hour))
                 ":"
                 '(:eval (format "%s" modeline-time-minute))
                 " 󰄨 "
                 '(:eval (format "%s" modeline-ram-usage))
                 " "
                 '(:eval kivnn/mode-line-agenda-info)
                 ;; 右对齐
                 'mode-line-format-right-align
                 '(:eval (format "%s" modeline-keybinding-style))
                 "   Acc "
                 '(:eval (format "%s" modeline-emacs-uptime))
                 "  󰽉 "
                 '(:eval kivnn/mode-line-position)
                 "  󰎆 M "
                 '(:eval (format "%s" emms-mode-line-string))
                 '(:eval (format "%s" emms-playing-time-string)))))


;; ========================================
;; 设置不同的信息更新定时器
;; ========================================
(run-at-time "0 sec" 60    'kivnn/update-modeline-with-all-scripts)    ; 每60秒更新一次状态栏除议程数量之外的信息


(provide 'ui-modeline-bar)
