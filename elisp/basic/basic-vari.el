;; =======================================
;; 文件路径 basic-file.el
;; =======================================


;; =======================================
;; 关于directory文件夹
;; =======================================
(defvar directory-default-directory                  "~/桌面/emacs-working-directory"                "[目录]: GNU Emacs的起始目录")
(defvar directory-denote-file                        "~/桌面/emacs-denote"                           "[目录]: denote的保存目录")
(defvar directory-music                              "~/音乐/"                                       "[目录]: music的保存目录")
(defvar directory-backup-directory-alist             "~/.emacs.d/saves/"                            "[目录]: 恢复文件的保存目录")
(defvar directory-emacs-archive                      "~/.emacs.d/archive/"                          "[目录]: emacs-archive的保存目录")
(defvar directory-modeline-path-suffix               "elisp/site-lisp/sh/"                          "[目录]: GNU Emacs配置文件路径的modeline部分")
(defvar directory-site-lisp                          "elisp/site-lisp/sh/"                          "[目录]: GNU Emacs配置文件路径的modeline部分")


;; =======================================
;; 关于file文件
;; =======================================
(defvar file-org-agenda-files                        "~/桌面/emacs-org/2025.org" 		    "[文件]: org-agenda的GTD文件")


;; =======================================
;; 关于variable变量
;; =======================================
(defvar variable-ui-fonts-size                       130                                            "[变量]: 默认的字体大小")
(defvar variable-ui-fonts-sauce                      "SauceCodeProNerdFontCompleteMono Nerd Font"   "[变量]: 字体nf-sauce")
(defvar variable-ui-fonts-source                     "Source Han Sans CN"                           "[变量]: 字体source-han-sans-CN")
(defvar variable-latex-fragment-left-bound           "\\\("                                         "[变量]: latex-fragment的左边界")
(defvar variable-latex-fragment-right-bound          "\\\)"                                         "[变量]: latex-fragment的右边界")
(defvar variable-latex-fragment-background           "#FFFFFF"                                      "[变量]: latex-fragment的公式背景")
(defvar variable-latex-fragment-quality              100                                            "[变量]: latex-fragment的渲染质量")
(defvar variable-latex-fragment-adjust-width         1.7                                            "[变量]: latex-fragment的默认长度倍数")
(defvar variable-latex-fragment-adjust-height        1.5                                            "[变量]: latex-fragment的默认宽度倍数")
(defvar variable-latex-fragment-documentclass-base   "11pt"                                         "[变量]: latex-fragment的文档的基础字体大小")


(provide 'basic-vari)
