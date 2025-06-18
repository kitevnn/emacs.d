;; ========================================
;; 自定义快捷键 key-keybindings.el
;; ========================================


;; ========================================
;; 关于软屏蔽
;; ========================================
(global-unset-key (kbd "C-z"))                                                                             ; 屏蔽C-z (原功能: 挂起)
(global-unset-key (kbd "C-\\"))                                                                            ; 屏蔽C-\\ (原功能: 切换输入法)
(global-unset-key (kbd "C-,"))                                                                             ; 屏蔽C-, (原功能: 打开org-agenda-file)


;; ========================================
;; 关于输入法emacs-rime
;; ========================================
(global-set-key (kbd "C-SPC")                            'toggle-input-method)                             ; 切换输入法


;; ========================================
;; 关于按键绑定key-keybindings
;; ========================================
(global-set-key (kbd "C-\\")                             'evil-mode)                                       ; 切换按键绑定


;; ========================================
;; 关于文本搜索
;; ========================================
(global-set-key (kbd "C-s")                              'kivnn/isearch-forward)                           ; 给emacs-rime优化使用体验的
(global-set-key (kbd "C-r")                              'kivnn/isearch-backward)                          ; 给emacs-rime优化使用体验的


;; ========================================
;; 关于buffer
;; ========================================
(global-set-key (kbd "C-z C-b C-n")                      'next-buffer)                                     ; 跳转到下一个全局buffer
(global-set-key (kbd "C-z C-b C-p")                      'previous-buffer)                                 ; 跳转到上一个全局buffer
(global-set-key (kbd "C-z C-b C-b")                      'centaur-tabs-backward)                           ; 跳转到上一个局部buffer
(global-set-key (kbd "C-z C-b C-f")                      'centaur-tabs-forward)                            ; 跳转到下一个局部buffer
(global-set-key (kbd "C-z C-b C-\,")                     'previous-buffer)                                 ; 跳转到上一个停留的buffer
(global-set-key (kbd "C-z C-b C-\.")                     'next-buffer)                                     ; 跳转到下一个停留的buffer
(global-set-key (kbd "C-z C-b C-e")                      'kivnn/view-echo-area-messages)                   ; 打开*Message*的buffer


;; ========================================
;; 关于frame
;; ========================================
(global-set-key (kbd "C-z C-f C-c")                      'clone-frame)                                     ; 克隆复制一个当前的frame
(global-set-key (kbd "C-z C-f C-d")                      'kivnn/delete-frame-or-other)                     ; 删除管理frame
(global-set-key (kbd "C-z C-f C-n")                      'other-frame)                                     ; 切换显示到下一个frame


;; ========================================
;; 关于theme
;; ========================================
(global-set-key (kbd "C-z C-t C-1")                      'kivnn/load-theme-light)                          ; 切换为亮色light主题
(global-set-key (kbd "C-z C-t C-2")                      'kivnn/load-theme-dark)                           ; 切换为暗色dark主题


;; ========================================
;; 窗口管理
;; ========================================
(global-set-key (kbd "C-z C-z C-k")                      'delete-window)                                   ; 关闭当前窗口
(global-set-key (kbd "C-z C-z C-f")                      'windmove-right)                                  ; 光标跳转到右边窗口
(global-set-key (kbd "C-z C-z C-b")                      'windmove-left)                                   ; 光标跳转到左边窗口
(global-set-key (kbd "C-z C-z C-n")                      'windmove-down)                                   ; 光标跳转到下边窗口
(global-set-key (kbd "C-z C-z C-p")                      'windmove-up)                                     ; 光标跳转到上边窗口
(global-set-key (kbd "C-z C-s C-f")                      'windmove-swap-states-right)                      ; 向右交换窗口
(global-set-key (kbd "C-z C-s C-b")                      'windmove-swap-states-left)                       ; 向左交换窗口
(global-set-key (kbd "C-z C-s C-n")                      'windmove-swap-states-down)                       ; 向下交换窗口
(global-set-key (kbd "C-z C-s C-p")                      'windmove-swap-states-up)                         ; 向上交换窗口


;; ========================================
;; 关于选区
;; ========================================
(global-set-key (kbd "C-z C-z C-c")                      'set-mark-command)                                ; 进入单行选区
(global-set-key (kbd "C-z C-x C-c")                      'rectangle-mark-mode)                             ; 进入矩形选区
(global-set-key (kbd "C-c SPC")                          'rectangle-mark-mode)                             ; 进入矩形选区
(global-set-key (kbd "C-z C-z C-s")                      'kivnn/expand-region-like-vim-find-char)          ; 在选区模式下模拟一次vim的f(find char)行为


;; ========================================
;; 关于调整窗口
;; ========================================
(global-set-key (kbd "C-z C-w C-p")                      'kivnn/resize-top-five-unit)                      ; 当前窗口向上调整5个单位
(global-set-key (kbd "C-z C-w C-n")                      'kivnn/resize-bottom-five-unit)                   ; 当前窗口向下调整5个单位
(global-set-key (kbd "C-z C-w C-b")                      'kivnn/resize-left-five-unit)                     ; 当前窗口向左调整5个单位
(global-set-key (kbd "C-z C-w C-f")                      'kivnn/resize-right-five-unit)                    ; 当前窗口向右调整5个单位


;; ========================================
;; 重启GNU Emacs
;; ========================================
(global-set-key (kbd "C-z C-z C-z C-z C-r")              'restart-emacs)                                   ; 重启GNU Emacs


;; ========================================
;; 关于dirvish文件管理器
;; ========================================
(global-set-key (kbd "C-z C-z C-d")                      'dirvish-side)                                    ; 左侧打开dirvish
(global-set-key (kbd "C-z C-d C-d")                      'dirvish-side)                                    ; 左侧打开dirvish(尝试)
(global-set-key (kbd "C-z C-z C-0")                      'dirvish)                                         ; 全局打开dirvish
(define-key dired-mode-map (kbd "C-z C-z C-u")           'dired-undo)                                      ; 在dirvish里撤回上次操作
(define-key dired-mode-map "."                           'dired-create-empty-file)                         ; 在dirvish里创建空文件
(define-key dired-mode-map ","                           'dired-clean-directory)                           ; 在dirvish里创建新目录


;; ========================================
;; 关于移动光标
;; ========================================
(global-set-key (kbd "M-n")                              'kivnn/move-next-five-lines)                      ; 光标向下移动5行
(global-set-key (kbd "M-p")                              'kivnn/move-prev-five-lines)                      ; 光标向上移动5行


;; ========================================
;; 关于buffer
;; ========================================
(global-set-key (kbd "C-z C-z C-t")                      'ibuffer)                                         ; 用ibuffer来管理buffer
(global-set-key (kbd "C-x C-b")                          'consult-buffer)                                  ; 用consult-buffer来切换buffer


;; ========================================
;; 关于编辑增强
;; ========================================
(global-set-key (kbd "C-=")                              'kivnn/duplicate-line)                            ; 复制当前行到下一行并保持光标水平位置不变
(global-set-key (kbd "C-y")                              'kivnn/yank-or-copy-line)                         ; 保留C-y原本yank的基础上，添加复制当前行，就像vim的yy一样
(global-set-key (kbd "C-z C-z C-\-")                     'consult-line)                                    ; consult版C-s搜索
(global-set-key (kbd "C-z C-z C-\=")                     'consult-ripgrep)                                 ; consult版rg搜索
(global-set-key (kbd "C-z C-z C-e")                      'embark-act)                                      ; embark版action行动
(global-set-key (kbd "C-z C-x C-h")                      'embark-prefix-help-command)                      ; embark版help帮助
(global-set-key (kbd "C-z C-x C-j")                      'kivnn/goto-match-paren)                          ; 括号匹配
(global-set-key (kbd "C-z C-z C-o")                      'delete-trailing-whitespace)                      ; 删除尾随空格


;; ========================================
;; 关于org-mode
;; ========================================
(define-key org-mode-map (kbd "C-z C-x C-0")             'valign-mode)                                     ; 切换valign-mode
(define-key org-mode-map (kbd "C-c C-x C-v")             'kivnn/toggle-inline-images-with-valign)          ; 用 C-c C-x C-v 避免valign-mode造成的对齐卡顿来预览图片
(define-key org-mode-map (kbd "C-z C-x C-f")             'kivnn/jump-the-ending-of-the-latex-fragment)     ; 当光标在公式块上下文时，光标跳转到公式块的左边界
(define-key org-mode-map (kbd "C-z C-x C-b")             'kivnn/jump-the-beginning-of-the-latex-fragment)  ; 当光标在公式块上下文时，光标跳转到公式块的右边界
(define-key org-mode-map (kbd "C-z C-x C-n")             'kivnn/jump-the-next-latex-fragment)              ; 当光标在公式块上下文时，光标跳转到下一个公式块
(define-key org-mode-map (kbd "C-z C-x C-p")             'kivnn/jump-the-previous-latex-fragment)          ; 当光标在公式块上下文时，光标跳转到上一个公式块
(define-key org-mode-map (kbd "C-z C-x C-,")             'org-previous-item)                               ; 跳转到上一个 (1) 2. 3) 的小标题
(define-key org-mode-map (kbd "C-z C-x C-.")             'org-next-item)                                   ; 跳转到下一个 (1) 2. 3) 的小标题
(global-set-key          (kbd "C-z C-z C-\\")            'org-agenda)                                      ; 打开org议题界面
(global-set-key          (kbd "C-z C-a C-\\")            'org-agenda)                                      ; 打开org议题界面
(define-key org-mode-map (kbd "C-z C-a C-\[")            'org-schedule)                                    ; 添加org议题的起始时间
(define-key org-mode-map (kbd "C-z C-a C-\]")            'org-deadline)                                    ; 添加org议题的终止时间
(define-key org-mode-map (kbd "C-z C-a C-\=")            'org-timestamp)                                   ; 添加org议题的<>激活标签
(define-key org-mode-map (kbd "C-z C-a C-\-")            'org-timestamp-inactive)                          ; 添加org议题的[]非激活标签
(define-key org-mode-map (kbd "C-z C-a C-j")             'org-todo)                                        ; 切换todo/done/etc.标题文字
(define-key org-mode-map (kbd "C-z C-a C-t")             'org-set-tags-command)                            ; 打上特征标签
(define-key org-mode-map (kbd "C-z C-a C-0")             'org-archive-subtree)                             ; 删除subtree并保存至同目录下的org-archive文件内
(define-key org-mode-map (kbd "C-z C-a C-\m")            'kivnn/update-modeline-all-information)           ; 手动更新modeline上的已有信息
(define-key org-mode-map (kbd "C-z C-a C-w")             'kivnn/org-agenda-change-headline-to-wait)        ; 将当前任务状态改为WAIT
(define-key org-mode-map (kbd "C-z C-a C-i")             'kivnn/org-agenda-change-headline-to-doing)       ; 将当前任务状态改为DOING
(define-key org-mode-map (kbd "C-z C-a C-d")             'kivnn/org-agenda-change-headline-to-done)        ; 将当前任务状态改为DONE
(define-key org-mode-map (kbd "C-z C-a C-a")             'kivnn/org-agenda-change-headline-to-todo)        ; 将当前任务状态改为TODO
(global-unset-key (kbd "C-,"))                                                                             ; 屏蔽C-, (原功能: 直接进入org-agenda-files)
(global-set-key (kbd "C-z C-a C-,")                      'org-cycle-agenda-files)                          ; 直接进入org-agenda-files
(define-key org-mode-map (kbd "C-z C-o C-a")             'kivnn/org-download-clipboard-and-rename)         ; 先保存剪贴板图片再重命名图片文件名
(define-key org-mode-map (kbd "C-z C-o C-r")             'kivnn/org-download-rename-at-point)              ; 重命名图片信息并重命名图片文件
(define-key org-mode-map (kbd "C-z C-o C-t C-t C-t")     'kivnn/org-download-delete)                       ; 删除图片信息并删除图片文件
(define-key org-mode-map (kbd "C-z C-z C-\i C-\i C-\i")  'org-preview-html-mode)                           ; 实时预览org
(define-key org-mode-map (kbd "C-z C-z C-l")             'kivnn/org-latex-preview)                         ; 无视fontspec包的定死字体大小的限制，强制渲染指定字体大小的LaTeX片段


;; ========================================
;; 关于denote
;; ========================================
(define-key org-mode-map (kbd "C-z C-n C-a")             'denote)                                          ; 创建笔记
(define-key org-mode-map (kbd "C-z C-n C-l")             'denote-link-or-create)                           ; 插入链接(插入正向笔记)
(define-key org-mode-map (kbd "C-z C-n C-\,")            'denote-find-backlink)                            ; 双链笔记退出行为
(define-key org-mode-map (kbd "C-z C-n C-\.")            'denote-find-link)                                ; 双链笔记进入行为
(define-key org-mode-map (kbd "C-z C-n C-r")             'denote-rename-file)                              ; 重命名笔记
(define-key org-mode-map (kbd "C-z C-n C-c")             'denote-backlinks)                                ; 看当前笔记被谁引用了(反向笔记)


;; ========================================
;; 关于PDFView
;; ========================================
;(define-key pdf-view-mode-map (kbd "d")                  'pdf-view-next-page-command)                      ; PDFView向后翻页
;(define-key pdf-view-mode-map (kbd "a")                  'pdf-view-previous-page-command)                  ; PDFView向前翻页
;(define-key pdf-view-mode-map (kbd "s")                  'pdf-view-scroll-up-or-next-page)                 ; PDFView向下滚动
;(define-key pdf-view-mode-map (kbd "w")                  'pdf-view-scroll-down-or-previous-page)           ; PDFView向上滚动
;(define-key pdf-view-mode-map (kbd "t")                  'kivnn/move-prev-ten-pages)                       ; PDFView向前翻10页
;(define-key pdf-view-mode-map (kbd "b")                  'kivnn/move-next-ten-pages)                       ; PDFView向后翻10页
;(require 'pdf-annot)
;(define-key pdf-annot-minor-mode-map (kbd "C-c C-a C-0") 'pdf-annot-delete)                                ; PDFView删除批注
;(define-key pdf-annot-minor-mode-map (kbd "C-c C-a C-1") 'pdf-annot-add-highlight-markup-annotation)       ; PDFView高亮
;(define-key pdf-annot-minor-mode-map (kbd "C-c C-a C-2") 'pdf-annot-add-underline-markup-annotation)       ; PDFView下划线
;(define-key pdf-annot-minor-mode-map (kbd "C-c C-a C-3") 'pdf-annot-add-squiggly-markup-annotation)        ; PDFView波浪下划线
;(define-key pdf-annot-minor-mode-map (kbd "C-c C-a C-8") 'pdf-annot-add-text-annotation)                   ; PDFView文本批注


;; ========================================
;; 关于Dashboard
;; ========================================
(define-key dashboard-mode-map       (kbd "p")           'dashboard-previous-line)                         ; 设置在仅有dashboard-item下按下p来移动光标
(define-key dashboard-mode-map       (kbd "n")           'dashboard-next-line)                             ; 设置在仅有dashboard-item下按下n来移动光标
(define-key dashboard-mode-map       (kbd "j")           nil)                                              ; 取消在仅有dashboard-item下按下j来移动光标
(define-key dashboard-mode-map       (kbd "k")           nil)                                              ; 取消在仅有dashboard-item下按下k来移动光标
(global-set-key                      (kbd "C-z C-d C-r") 'consult-recent-file)                             ; C-z C-d C-r 来打开最近文件
(global-set-key                      (kbd "C-z C-d C-b") 'bookmark-bmenu-list)                             ; C-z C-d C-b 来打开书签文件
(global-set-key                      (kbd "C-z C-d C-a") 'org-agenda-list)                                 ; C-z C-d C-a 来打开议程文件


;; ========================================
;; 关于进程process
;; ========================================
(global-set-key (kbd "C-z C-p C-e")                      'telega)                                          ; 打开telega
(global-set-key (kbd "C-z C-p C-s")                      'eshell)                                          ; 打开eshell壳
(global-set-key (kbd "C-z C-p C-t")                      'eat)                                             ; 打开eat终端模拟器
(global-set-key (kbd "C-c C-p C-l")                      'eglot)                                           ; 打开eglot语言服务客户端
(global-set-key (kbd "C-c C-p C-c")                      'corfu-mode)                                      ; 打开corfu轻量补全框架


;; ========================================
;; 关于magit
;; ========================================
(global-set-key (kbd "C-z C-z C-1")                      'magit)                                           ; 打开magit
(define-key text-mode-map (kbd "C-z C-z C-2")            'kivnn/magit-commit-template-wsl-archlinux)       ; 个人提交信息模板(WSL环境)
(define-key text-mode-map (kbd "C-z C-z C-3")            'kivnn/magit-commit-template-archlinux)           ; 个人提交信息模板(ArchLinux环境)


;; ========================================
;; 关于eww
;; ========================================
(require 'eww)
(define-key eww-mode-map       (kbd "M-n")               'kivnn/move-next-five-lines)                      ; 光标向下移动5行
(define-key eww-mode-map       (kbd "M-p")               'kivnn/move-prev-five-lines)                      ; 光标向上移动5行


;; ========================================
;; 关于进程process
;; ========================================
(require 'telega)
(define-key telega-chat-mode-map       (kbd "M-n")       'kivnn/move-next-five-lines)                      ; 光标向下移动5行
(define-key telega-chat-mode-map       (kbd "M-p")       'kivnn/move-prev-five-lines)                      ; 光标向上移动5行


;; ========================================
;; 关于音乐播放器
;; ========================================
(require 'emms)
(global-set-key (kbd "C-z C-z C-\m")                   'kivnn/emms-play-directory)                         ; 打开音乐播放器
(define-key emms-playlist-mode-map (kbd "R")           'emms-toggle-repeat-track)                          ; 音乐循环播放
(define-key emms-playlist-mode-map (kbd "L")           'emms-toggle-repeat-playlist)                       ; 音乐列表播放
(define-key emms-playlist-mode-map (kbd "Q")           'emms-stop)                                         ; 停止所有音乐的播放
(define-key emms-playlist-mode-map (kbd "<SPC>")       'emms-pause)                                        ; 暂停播放/开始播放
(define-key emms-playlist-mode-map (kbd "s")           'emms-playlist-mode-play-smart)                     ; 从头播放当前音乐
(define-key emms-playlist-mode-map (kbd "-")           'emms-volume-lower)                                 ; 降低mpv的音量
(define-key emms-playlist-mode-map (kbd "=")           'emms-volume-raise)                                 ; 增加mpv的音量
(define-key emms-playlist-mode-map (kbd ".")           'emms-seek-forward)                                 ; 快进10秒
(define-key emms-playlist-mode-map (kbd ",")           'emms-seek-backward)                                ; 后退10秒
(define-key emms-playlist-mode-map (kbd "C-.")         'emms-seek-forward-minute)                          ; 快进60秒
(define-key emms-playlist-mode-map (kbd "C-,")         'emms-seek-backward-minute)                         ; 后退60秒
(define-key emms-playlist-mode-map (kbd "f")           nil)                                                ; 原功能emms-show
(define-key emms-playlist-mode-map (kbd "r")           nil)                                                ; 原功能emms-random
(define-key emms-playlist-mode-map (kbd "+")           nil)                                                ; 原功能emms-volume-raise
(define-key emms-playlist-mode-map (kbd "<")           nil)                                                ; 原功能emms-seek-backward
(define-key emms-playlist-mode-map (kbd ">")           nil)                                                ; 原功能emms-seek-forward
(define-key emms-playlist-mode-map (kbd "M-n")         'kivnn/move-next-five-lines)                        ; 光标向下移动5行
(define-key emms-playlist-mode-map (kbd "M-p")         'kivnn/move-prev-five-lines)                        ; 光标向上移动5行
(global-set-key (kbd "C-z C-\m C-r")                   'emms-toggle-repeat-track)                          ; 音乐循环播放
(global-set-key (kbd "C-z C-\m C-q")                   'emms-stop)                                         ; 停止所有音乐的播放
(global-set-key (kbd "C-z C-\m C-p")                   'emms-pause)                                        ; 暂停播放/开始播放
(global-set-key (kbd "C-z C-\m C-s")                   'emms-playlist-mode-play-smart)                     ; 从头播放当前音乐
(global-set-key (kbd "C-z C-\m C-\-")                  'emms-volume-lower)                                 ; 降低mpv的音量
(global-set-key (kbd "C-z C-\m C-\=")                  'emms-volume-raise)                                 ; 增加mpv的音量
(global-set-key (kbd "C-z C-\m C-.")                   'emms-seek-forward-minute)                          ; 快进60秒
(global-set-key (kbd "C-z C-\m C-,")                   'emms-seek-backward-minute)                         ; 后退60秒


;; ========================================
;; 关于face
;; ========================================
(global-set-key (kbd "C-z C-z C-/")                    'kivnn/describe-faces-at-point)                     ; 展示光标所在行的所有face名称及属性


;; ========================================
;; 关于deadgrep
;; ========================================
(require 'deadgrep)
(global-set-key (kbd "C-z C-p C-d")                    'deadgrep)                                          ; 打开deapgrep
(define-key deadgrep-mode-map (kbd "c")                'deadgrep-cycle-search-case)                        ; 大写改小写快捷键
(define-key deadgrep-mode-map (kbd "d")                'deadgrep-directory)                                ; 大写改小写快捷键
(define-key deadgrep-mode-map (kbd "f")                'deadgrep-cycle-files)                              ; 大写改小写快捷键
(define-key deadgrep-mode-map (kbd "i")                'deadgrep-incremental)                              ; 大写改小写快捷键
(define-key deadgrep-mode-map (kbd "s")                'deadgrep-search-term)                              ; 大写改小写快捷键
(define-key deadgrep-mode-map (kbd "t")                'deadgrep-cycle-search-type)                        ; 大写改小写快捷键


;; ========================================
;; 关于状态仪表盘
;; ========================================
(global-set-key (kbd "C-z C-z C-,")                    'kivnn/status-monitor-start)                        ; 打开状态仪表盘
(global-set-key (kbd "C-z C-z C-'")                    'kivnn/status-monitor-stop)                         ; 关闭状态仪表盘


;; ========================================
;; 关于GNU Emacs
;; ========================================
(global-set-key (kbd "C-z C-z C-\.")                   'kivnn/show-emacs-uptime)                           ; 累计使用GNU Emacs的总时长(site-lisp的bash实现)


(provide 'key-keybindings)
