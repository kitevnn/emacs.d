;; =======================================
;; 关于路径加载 basic-path.el
;; =======================================
(dolist (dir '(
               "elisp/basic"               ; 关于基本设置路径
               "elisp/custom"              ; 关于自定义函数路径
               "elisp/enhance"             ; 关于体验增强路径
               "elisp/ui/font"             ; 关于ui路径
               "elisp/ui/icon"
               "elisp/ui/theme"
               "elisp/ui/decorate"
               "elisp/ui/modeline"
               "elisp/note/orgmode"        ; 关于笔记路径
               "elisp/note/auctex"
               "elisp/note/denote"
               "elisp/zprogramming/cmp"    ; 关于编程路径
               "elisp/zprogramming/lsp"
               "elisp/zprogramming/snips"
               "elisp/zprogramming/ts"
               "elisp/key"                 ; 关于快捷键设置
               "elisp/hooks"               ; 关于钩子设置
               "elisp/im"                  ; 关于instant-messaging(IM)设置
               "site-lisp/sh"              ; 关于site-lisp
               "elisp/music"               ; 关于音乐播放器
               ))
  (add-to-list 'load-path
               (expand-file-name dir user-emacs-directory)))


(provide 'basic-path)
