;; ========================================
;; 钩子配置 hooks-hook.el
;; ========================================


;; ========================================
;; 编程类钩子hook
;; ========================================
(add-hook 'prog-mode                                    'hs-minor-mode)                          ; 折叠展开
(add-hook 'prog-mode-hook                               #'kivnn/show-trailing-whitespace)        ; 尾随空格
(add-hook 'emacs-lisp-mode-hook                         #'kivnn/show-trailing-whitespace)        ; 尾随空格


;; ========================================
;; 完成初始化后的钩子hook
;; ========================================
(add-hook 'after-init-hook                              'kivnn/after-init-hook)                  ; 初始化钩子
(add-hook 'after-init-hook                              'kivnn/cleanup-emms-history)             ; 初始化emms


;; ========================================
;; 笔记文本org/LaTeX-PS/text的钩子hook
;; ========================================
(add-hook 'text-mode-hook                               'turn-on-visual-line-mode)               ; 单行文本超出一定长度后自动虚拟换行显示(类似于set wrap)
(add-hook 'org-mode-hook                                #'org-cdlatex-mode)                      ; 在org-mode使用OCDL(这是OCDL而不是CDL)
(add-hook 'org-mode-hook                                #'valign-mode)                           ; 在org-mode使用valign对齐不等宽字体
(add-hook 'org-mode-hook                                'kivnn/org-mode-table-tab-hook)          ; 仅在org-table上下文范围内使用cdlatex的TAB来补全来防止单元格内容不会因org-cycle而被新插入的字符org-self-insert-command而覆盖"
(add-hook 'TeX-after-compilation-finished-functions     #'TeX-revert-document-buffer)            ; AUCTeX(14.0.3.2024-03-17)
(add-hook 'LaTeX-mode-hook                              #'cdlatex-mode)                          ; 在LaTeX-mode使用OCDL(这是OCDL而不是CDL)
(add-hook 'LaTeX-mode-hook                              #'tree-sitter-mode)                      ; 在LaTeX-mode使用ts
(add-hook 'pdf-view-mode-hook                           'kivnn/pdf-view-mode-hook-with-yas)      ; 在PDFView里禁用yasnippet


;; ========================================
;; GNU Emacs相关
;; ========================================
(add-hook 'kill-emacs-hook                              'kivnn/save-emacs-uptime)                ; 在退出Emacs时保存当前uptime


;; ========================================
;; telega相关
;; ========================================
(add-hook 'telega-root-mode-hook                        'kivnn/telega-buffer-face-height)        ; 调整telega的主界面字体大小为1.3倍
(add-hook 'telega-chat-mode-hook                        'kivnn/telega-buffer-face-height)        ; 调整telega的聊天界面字体大小为1.3倍


;; ========================================
;; buffer相关
;; ========================================
(add-hook 'dashboard-mode-hook                          'kivnn/dashboard-mode-hook)              ; 保证一直关闭scratch，保证只关闭第一次Message


(provide 'hooks-hook)
