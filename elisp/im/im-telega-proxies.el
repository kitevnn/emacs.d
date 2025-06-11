;; ========================================
;; IM代理设置 im-telega-proxies.el
;; ========================================
(setq telega-proxies
      (list
       `(:server "127.0.0.1"
         :port 4781
         :enable t
         :type (:@type "proxyTypeSocks5"
                       :username ""
                       :password ""))))


(provide 'im-telega-proxies)
