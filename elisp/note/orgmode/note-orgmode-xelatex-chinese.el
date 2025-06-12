;; ========================================
;; note-orgmode-xelatex-chinese.el 自定义xelatex-chinese引擎
;; ========================================
;; 设置dvipng的调整图片大小
(defvar xelatex-chinese-image-size-adjust
  (read (format "(%f . %f)"
                variable-latex-fragment-adjust-width
                variable-latex-fragment-adjust-height)))

;; 设置xelatex-chinese的latex头文件
(defvar xelatex-chinese-latex-header
  (format "\\documentclass[%s]{standalone}
                              \\usepackage{fontspec}
                              \\setmainfont{%s}
                              \\setsansfont{%s}
                              \\setmonofont{%s}
                              \\usepackage[usenames]{color}
                              \\usepackage{amsmath}
                              \\usepackage{extpfeil}
                              \\pagestyle{empty}"
          variable-latex-fragment-documentclass-base
          variable-ui-fonts-source
          variable-ui-fonts-source
          variable-ui-fonts-source))

;; 设置xelatex编译器的从pdf生成到png的行为
(defvar xelatex-chinese-latex-compiler
  (concat
   "xelatex"                                    ; 使用xelatex编译器来生成.pdf文件
   " "
   "-interaction nonstopmode"                   ; 编译时遇到错误也不停下，继续编译，防止Emacs因为一些上古LaTeX2e宏包的错误而卡住
   " "
   "-output-directory %o"                       ; 在当前目录的临时目录下，输出编译出来的产物文件
   " "
   "%f"                                         ; Emacs临时根据当前latex-fragment生成.tex源文件，并传入到前面的编译器来编译
   ))

;; 设置imagemagick转换图片程序从png到更进一步的png的行为
(defvar xelatex-chinese-image-converter
  (concat
   "convert"                                    ; convert也就是imagemagick
   " "
   (format "-density %d"
           (- variable-ui-fonts-size 25))       ; 控制像素密度
   " "
   (format "-background '%s'"
           variable-latex-fragment-background)  ; 设置背景颜色
   " "
   "-flatten"                                   ; 类似PS的合并图层，需要在-background后面使用，目的是将透明区域变成带RGB通道的区域
   " "
   (format "-quality %d"
           variable-latex-fragment-quality)     ; PNG 的压缩质量(对于 PNG 影响不大，对 JPEG 很重要)
   " "
   "%f"                                        ; 输入读取.png文件，来载下一步去转换为magick这里设置出来的png文件
   " "
   "%O"                                        ; 输出magick这里设置出来的png文件的文件名占位符
   ))


;; ========================================
;; xelatex-chinese: 渲染utf-8片段引擎
;; ========================================
(add-to-list 'org-preview-latex-process-alist
             `(xelatex-chinese
               :programs ("xelatex" "convert")
               :description "pdf > png"
               :message "you need to install the programs: xelatex and dvipng."
               :image-input-type "pdf"
               :image-output-type "png"
               :image-size-adjust ,xelatex-chinese-image-size-adjust
               :latex-header ,xelatex-chinese-latex-header
               :latex-compiler (,xelatex-chinese-latex-compiler)
               :image-converter (,xelatex-chinese-image-converter)))


(provide 'note-orgmode-xelatex-chinese)
