;; ========================================
;; 主题设置 ui-theme-light.el
;; ========================================
(use-package nano-theme
  :ensure nil
  :defer nil
  :init
  (load-theme 'nano-light t t))


;; ========================================
;; 默认加载nano-light主题
;; ========================================
(add-to-list 'custom-safe-themes "e7820b899036ae7e966dcaaec29fd6b87aef253748b7de09e74fdc54407a7a02")
(load-theme 'nano-light t)
(setq custom-safe-thems '("e7820b899036ae7e966dcaaec29fd6b87aef253748b7de09e74fdc54407a7a02" default))
(setq custom-safe-themsdefault '("e7820b899036ae7e966dcaaec29fd6b87aef253748b7de09e74fdc54407a7a02" default))


(provide 'ui-theme-light)
