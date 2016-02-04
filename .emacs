;(setq url-proxy-services
;  '(("http" . "proxy.example.com:8080")
;    ("https" . "proxy.example.com:8080")))
;
;(setq url-http-proxy-basic-auth-storage
;  (list (list "proxy.example.com:8080"
;              (cons "/"
;                    (base64-encode-string "user:passwd")))))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'evil)
(evil-mode 1)
