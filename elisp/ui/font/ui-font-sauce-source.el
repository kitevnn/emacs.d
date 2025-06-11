;; ========================================
;; 字体设置 ui-font-sauce-source.el
;; ========================================


;; ========================================
;; 全局字体设置
;; ========================================
(set-face-attribute 'default nil
                    :height variable-ui-fonts-size
                    :font variable-ui-fonts-sauce)
(set-face-attribute 'mode-line nil
                    :height (- variable-ui-fonts-size 30)
                    :family variable-ui-fonts-sauce)
(set-face-attribute 'mode-line-inactive nil
                    :height (- variable-ui-fonts-size 30)
                    :family variable-ui-fonts-sauce)


;; ========================================
;; centaur-tabs字体设置
;; ========================================
(centaur-tabs-change-fonts variable-ui-fonts-sauce (- variable-ui-fonts-size 20))


;; ========================================
;; 特定mode字体设置
;; ========================================
; 设置 variable-pitch 字体 (用于 org-mode 等可变宽场景)
; 设置 fixed-pitch (等宽，用于代码块)
(defun kivnn/set-sauce-source-sauce ()
  "设置sauce-source-sauce字体"
  (setq-local face-remapping-alist
              `((default            :family ,variable-ui-fonts-sauce   :height ,(- variable-ui-fonts-size 20))
                (variable-pitch nil :family ,variable-ui-fonts-source  :height ,(- variable-ui-fonts-size 20))
                (fixed-pitch nil    :family ,variable-ui-fonts-sauce   :height ,(- variable-ui-fonts-size 20)))))

(defun kivnn/set-source-source-sauce ()
  "设置source-source-source字体"
  (setq-local face-remapping-alist
              `((default            :family ,variable-ui-fonts-source  :height ,(+ variable-ui-fonts-size 20))
                (variable-pitch nil :family ,variable-ui-fonts-source  :height ,(+ variable-ui-fonts-size 20))
                (fixed-pitch nil    :family ,variable-ui-fonts-sauce   :height ,(+ variable-ui-fonts-size 20)))))

(defun kivnn/set-sauce-small ()
  "设置sauce字体(small)"
  (setq-local face-remapping-alist
              `((default            :family ,variable-ui-fonts-sauce   :height ,(- variable-ui-fonts-size 20)))))

(defun kivnn/set-source ()
  "设置source字体"
  (setq-local face-remapping-alist
              `((default            :family ,variable-ui-fonts-source  :height ,variable-ui-fonts-size))))


;; ========================================
;; 特定mode字体钩子
;; ========================================
(add-hook 'org-mode-hook           #'kivnn/set-sauce-source-sauce)
(add-hook 'emms-mode-hook          #'kivnn/set-sauce-source-sauce)
(add-hook 'telega-root-mode-hook   #'kivnn/set-source-source-sauce)
(add-hook 'telega-chat-mode-hook   #'kivnn/set-source-source-sauce)
(add-hook 'emacs-lisp-mode-hook    #'kivnn/set-sauce-small)
(add-hook 'magit-status-mode-hook  #'kivnn/set-sauce-small)
(add-hook 'magit-diff-mode-hook    #'kivnn/set-sauce-small)
(add-hook 'dired-mode-hook         #'kivnn/set-sauce-small)
(add-hook 'html-mode-hook          #'kivnn/set-sauce-small)
(add-hook 'text-mode-hook          #'kivnn/set-sauce-small)
(add-hook 'minibuffer-mode-hook    #'kivnn/set-sauce-small)


(provide 'ui-font-sauce-source)

