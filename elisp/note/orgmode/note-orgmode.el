;; ========================================
;; org笔记及任务管理 note-orgmode.el
;; ========================================
(use-package org
  :ensure t
  :defer nil)


;; ========================================
;; org-babel(C-c ') 能加载 LaTeX
;; ========================================
(org-babel-do-load-languages
  'org-babel-load-languages
  '((latex . t)))


;; ========================================
;; valign 虚拟对齐
;; ========================================
(use-package valign
  :ensure t
  :defer nil)

;; ========================================
;; org-preview-latex-process-alist 自定义引擎
;; ========================================
(require 'note-orgmode-dvipng)
(require 'note-orgmode-xelatex-chinese)


;; ========================================
;; 设置更多可用的org-todo
;; ========================================
(setq org-todo-keywords
      '((sequence "TODO" "DOING" "WAIT" "DONE" "MY")))


;; ========================================
;; 设置org-preview-html
;; ========================================
(use-package org-preview-html
  :ensure t
  :defer t)


(provide 'note-orgmode)
