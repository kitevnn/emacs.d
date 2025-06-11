;; ========================================
;; 模拟vim layer的按键风格，的前提准备
;; ========================================
(defun kivnn/evil-split-window-right ()
  (interactive)
  (split-window-right)
  (windmove-right))

(defun kivnn/evil-split-window-below ()
  (interactive)
  (split-window-below)
  (windmove-down))


;; ========================================
;; 设置基本通用风格的个人快捷键模板
;; ========================================
(defun kivnn/set-general-keybindings (state keymap)
  "设置基本通用风格的个人快捷键模板"
  (evil-define-key state keymap
    (kbd "h")         #'evil-backward-char
    (kbd "j")         #'evil-next-line
    (kbd "k")         #'evil-previous-line
    (kbd "l")         #'evil-forward-char
    (kbd "S")         #'save-buffer
    (kbd "s")         nil
    (kbd "J")         #'kivnn/move-next-five-lines
    (kbd "K")         #'kivnn/move-prev-five-lines
    (kbd "M")         #'dirvish-side
    (kbd "Q")         #'delete-window
    (kbd "sh")        #'split-window-right
    (kbd "sj")        #'kivnn/evil-split-window-below
    (kbd "sk")        #'split-window-below
    (kbd "sl")        #'kivnn/evil-split-window-right
    (kbd "C-w h")     #'windmove-left
    (kbd "C-w j")     #'windmove-down
    (kbd "C-w k")     #'windmove-up
    (kbd "C-w l")     #'windmove-right
    (kbd "<up>")      #'kivnn/resize-top-five-unit
    (kbd "<down>")    #'kivnn/resppize-bottom-five-unit
    (kbd "<left>")    #'kivnn/resize-left-five-unit
    (kbd "<right>")   #'kivnn/resize-right-five-unit
    (kbd "SPC /")     #'kivnn/isearch-forward
    (kbd "SPC SPC /") #'kivnn/isearch-backward
    (kbd "SPC ,")     #'previous-buffer
    (kbd "SPC .")     #'next-buffer
    (kbd "SPC m")     #'kivnn/update-modeline-all-information
    (kbd "SPC SPC q") #'evil-mode
    (kbd "C-f")       #'evil-forward-char
    (kbd "C-b")       #'evil-backward-char
    (kbd "C-n")       #'evil-next-line
    (kbd "C-p")       #'evil-previous-line))


;; ========================================
;; 模拟vim layer的按键风格 enhance-evil.el
;; ========================================
(use-package evil
  :ensure t
  :defer t
  :config
  ;;; ========================================
  ;;; global-mode
  ;;; ========================================
  (progn
    (define-key evil-normal-state-map (kbd "S")               #'save-buffer)
    (define-key evil-normal-state-map (kbd "s")               nil)
    (define-key evil-normal-state-map (kbd "J")               #'kivnn/move-next-five-lines)
    (define-key evil-normal-state-map (kbd "K")               #'kivnn/move-prev-five-lines)
    (define-key evil-normal-state-map (kbd "M")               #'dirvish-side)
    (define-key evil-normal-state-map (kbd "Q")               #'delete-window)
    (define-key evil-normal-state-map (kbd "sh")              #'split-window-right)
    (define-key evil-normal-state-map (kbd "sj")              #'kivnn/evil-split-window-below)
    (define-key evil-normal-state-map (kbd "sk")              #'split-window-below)
    (define-key evil-normal-state-map (kbd "sl")              #'kivnn/evil-split-window-right)
    (define-key evil-normal-state-map (kbd "C-w h")           #'windmove-left)
    (define-key evil-normal-state-map (kbd "C-w j")           #'windmove-down)
    (define-key evil-normal-state-map (kbd "C-w k")           #'windmove-up)
    (define-key evil-normal-state-map (kbd "C-w l")           #'windmove-right)
    (define-key evil-normal-state-map (kbd "<up>")            #'kivnn/resize-top-five-unit)
    (define-key evil-normal-state-map (kbd "<down>")          #'kivnn/resppize-bottom-five-unit)
    (define-key evil-normal-state-map (kbd "<left>")          #'kivnn/resize-left-five-unit)
    (define-key evil-normal-state-map (kbd "<right>")         #'kivnn/resize-right-five-unit)
    (define-key evil-normal-state-map (kbd "SPC /")           #'kivnn/isearch-forward)
    (define-key evil-normal-state-map (kbd "SPC SPC /")       #'kivnn/isearch-backward)
    (define-key evil-normal-state-map (kbd "SPC ,")           #'previous-buffer)
    (define-key evil-normal-state-map (kbd "SPC .")           #'next-buffer)
  (define-key evil-normal-state-map (kbd "SPC o")           #'delete-trailing-whitespace))
  (define-key evil-normal-state-map (kbd "SPC g")           #'magit)
  (define-key evil-normal-state-map (kbd "SPC e")           #'telega)
  (define-key evil-normal-state-map (kbd "SPC t")           #'eat)
  (define-key evil-normal-state-map (kbd "SPC b")           #'ibuffer)

  ;;; ========================================
  ;;; dired-map
  ;;; ========================================
  (with-eval-after-load 'dired
    (kivnn/set-general-keybindings 'normal dired-mode-map)
    (evil-define-key 'normal dired-mode-map
      (kbd "a") #'dired-create-empty-file
      (kbd "r") #'dired-do-rename
      (kbd "m") #'dired-mark
      (kbd "M") #'dirvish-side
      (kbd "u") #'dired-unmark
      (kbd "d") #'dired-do-delete
      (kbd "h") #'dired-up-directory
      (kbd "j") #'dired-next-line
      (kbd "k") #'dired-previous-line
      (kbd "l") #'dired-find-file))

    ;;; ========================================
    ;;; org-mode
    ;;; ========================================
  (with-eval-after-load 'org
    (evil-make-overriding-map org-mode-map 'normal)
    (kivnn/set-general-keybindings 'normal org-mode-map)
    (evil-define-key 'normal org-mode-map
      ;; about te<x>t
      (kbd "SPC x v") #'kivnn/toggle-inline-images-with-valign
      (kbd "SPC x c") #'org-latex-preview
      (kbd "SPC x z") #'kivnn/org-latex-preview
      (kbd "SPC x b") #'kivnn/jump-the-beginning-of-the-latex-fragment
      (kbd "SPC x f") #'kivnn/jump-the-ending-of-the-latex-fragment
      (kbd "SPC x n") #'kivnn/jump-the-next-latex-fragment
      (kbd "SPC x p") #'kivnn/jump-the-previous-latex-fragment
      (kbd "SPC x ,") #'org-previous-item
      (kbd "SPC x .") #'org-next-item
      (kbd "SPC x 0") #'valign-mode
      ;; about <a>genda
      (kbd "SPC a t") #'kivnn/org-agenda-change-headline-to-todo
      (kbd "SPC a d") #'kivnn/org-agenda-change-headline-to-done
      (kbd "SPC a i") #'kivnn/org-agenda-change-headline-to-doing
      (kbd "SPC a w") #'kivnn/org-agenda-change-headline-to-wait
      (kbd "SPC a j") #'org-todo
      (kbd "SPC a -") #'org-timestamp-inactive
      (kbd "SPC a 0") #'org-archive-subtree
      (kbd "SPC a =") #'org-timestamp
      (kbd "SPC a [") #'org-schedule
      (kbd "SPC a ]") #'org-deadline
      ;; about de<n>ote
      (kbd "SPC n a") #'denote
      (kbd "SPC n c") #'denote-backlinks
      (kbd "SPC n l") #'denote-link-or-create
      (kbd "SPC n r") #'denote-rename-file
      (kbd "SPC n ,") #'denote-find-backlink
      (kbd "SPC n .") #'denote-find-link
      ;; about custom
      (kbd "SPC 2") #'kivnn/magit-commit-template-wsl-archlinux
      (kbd "SPC 3") #'kivnn/magit-commit-template-archlinux)
    (evil-define-key 'insert org-mode-map
      (kbd "$") #'kivnn/insert-inline-OCDL))

  ;;; ========================================
  ;;; ibuffer-mode
  ;;; ========================================
  (with-eval-after-load 'ibuffer
    (setq evil-emacs-state-modes (delq 'ibuffer-mode evil-emacs-state-modes))
    (evil-make-overriding-map ibuffer-mode-map 'normal)
    (kivnn/set-general-keybindings 'normal ibuffer-mode-map))
  ;; [可选项] (evil-define-key 'normal ibuffer-mode-map (kbd "") nil)

  ;;; ========================================
  ;;; dashboard-mode
  ;;; ========================================
  (with-eval-after-load 'dashboard
    (kivnn/set-general-keybindings 'normal dashboard-mode-map)
    (evil-define-key 'normal dashboard-mode-map
      (kbd "SPC SPC r") #'consult-recent-file
      (kbd "SPC SPC b") #'bookmark-bmenu-list
      (kbd "SPC SPC a") #'org-agenda-list))

  ;;; ========================================
  ;;; org-agenda-mode
  ;;; ========================================
  (with-eval-after-load 'org-agenda
    (setq evil-emacs-state-modes (delq 'org-agenda-mode evil-emacs-state-modes))
    (evil-make-overriding-map org-agenda-mode-map 'normal)
    (kivnn/set-general-keybindings 'normal org-agenda-mode-map)))
  ;; [可选项] (evil-define-key 'normal org-agenda-mode-map (kbd "") nil)


(provide 'enhance-evil)
