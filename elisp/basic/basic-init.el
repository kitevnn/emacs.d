;; =======================================
;; 基本配置 basic-init.el
;; =======================================

;; =======================================
;; 关闭默认欢迎界面
;; =======================================
(setq inhibit-startup-screen t)


;; =======================================
;; 关闭默认工具栏显示
;; =======================================
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)


;; =======================================
;; 关闭scratch与Messages的Buffer
;; =======================================
(setq-default message-log-max nil)


;; =======================================
;; y or n
;; =======================================
(fset 'yes-or-no-p 'y-or-n-p)


;; =======================================
;; 关闭 *beep* 音效
;; =======================================
(setq ring-bell-function 'ignore)


;; =======================================
;; 编码设置
;; =======================================
(prefer-coding-system 'utf-8)


;; =======================================
;; ibuffer格式设置
;; =======================================
(setq ibuffer-formats
      '((mark modified read-only locked " " (name 30 18 :left :elide) " "
              (size 9 -1 :right) " " (mode 16 16 :left :elide) " " filename-and-process)
        (mark " " (name 16 -1) " " filename)))


;; =======================================
;; 起始目录
;; =======================================
(setq default-directory directory-default-directory)                  ; GNU Emacs的起始目录


;; =======================================
;; 关于agenda
;; =======================================
(setq org-agenda-files (list file-org-agenda-files))                  ; org-agenda的GTD文件，多个文件请用 (list file-org-agenda-files-1 file-org-agenda-files-2)


;; =======================================
;; 自定义恢复文件配置(Auto saving...done)
;; =======================================
(setq backup-directory-alist
      `(("." . ,directory-backup-directory-alist)))                   ; 统一设置恢复文件的保存目录，而不污染当前同级目录
(setq backup-by-copying t)                                            ; 设置保存形式
(setq-default auto-save-no-message t)                                 ; 禁用自动保存的消息提示
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)                                                  ; 设置保存版本控制


;; =======================================
;; 1行80个字符
;; =======================================
(setq-default fill-column 80)


(provide 'basic-init)
