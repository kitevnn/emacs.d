;; ========================================
;; note-orgmode-dvipng.el 自定义dvipng引擎
;; ========================================
;; 设置dvipng的调整图片大小
(defvar dvipng-image-size-adjust
  (read (format "(%f . %f)"
                variable-latex-fragment-adjust-width
                variable-latex-fragment-adjust-height)))

;; 设置latex编译器的生成dvi文件的行为
(defvar dvipng-latex-compiler
  (concat "latex"                         ; 使用latex编译器来生成.dvi文件
          " "
          "-interaction nonstopmode"      ; 编译时遇到错误也不停下，继续编译，防止Emacs因为一些上古LaTeX2e宏包的错误而卡住
          " "
          "-output-directory %o"          ; 在当前目录的临时目录下，输出编译出来的产物文件
          " "
          "%f"                            ; Emacs临时根据当前latex-fragment生成.tex源文件，并传入到前面的编译器来编译
          ))

;; 设置dvipng转换图片程序的从dvi生成到png的行为
(defvar dvipng-image-converter-dpi variable-ui-fonts-size)
(defvar dvipng-image-converter
  (concat
   "dvipng"                               ; 将之前得到的dvi文件，转换为png的引擎程序
   " "
   (format "-D %d"
           dvipng-image-converter-dpi)    ; 设置分辨率
   " "
   "-T tight"                             ; 自动裁剪边缘空白，防止出现大面积空白区域
   " "
   "-o %O"                                ; 在当前目录的临时目录下，输出编译出来的产物文件
   " "
   "%f"                                   ; 输入读取.dvi文件，来在下一步去转换为png文件
   ))

;; 设置imagemagick转换图片程序从png到更进一步的png的行为
(defvar dvipng-transparent-image-converter
  (concat
   "convert"                              ; convert也就是imagemagick
   " "
   (format "-density %d"                  ; 控制像素密度
         variable-ui-fonts-size)
   " "
   (format "-background '%s'"             ; 设置背景颜色
           variable-latex-fragment-background)
   " "
   "-flatten"                             ; 类似PS的合并图层，需要在-background后面使用，目的是将透明区域变成带RGB通道的区域
   " "
   (format "-quality %d"                  ; PNG 的压缩质量(对于 PNG 影响不大，对 JPEG 很重要)
           variable-latex-fragment-quality)
   " "
   "%f"                                   ; 输入读取.png文件，来载下一步去转换为magick这里设置出来的png文件
   " "
   "%O"                                   ; 输出magick这里设置出来的png文件的文件名占位符
   ))


;; ========================================
;; dvipng: 渲染非utf-8片段引擎
;; ========================================
;; 删除原本的
(setq org-preview-latex-process-alist
      (assq-delete-all 'dvipng org-preview-latex-process-alist))
;; 添加自己的
(setq org-preview-latex-process-alist
      `((dvipng
        :programs ("latex" "dvipng" "convert")
        :description "dvi > png"
        :message "you need to install the programs: latex and dvipng."
        :image-input-type "dvi"
        :image-output-type "png"
        :image-size-adjust ,dvipng-image-size-adjust
        :latex-compiler (,dvipng-latex-compiler)
        :image-converter (,dvipng-image-converter)
        :transparent-image-converter (,dvipng-transparent-image-converter))))


(provide 'note-orgmode-dvipng)
