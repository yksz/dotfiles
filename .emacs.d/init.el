(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;; clipboard
(setq x-select-enable-clipboard t)

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; el-get-bundle
(el-get-bundle evil)
(el-get-bundle auto-complete)

(require 'evil)
(evil-mode 1)

(require 'auto-complete-config)
(ac-config-default)
(ac-set-trigger-key "TAB")
(setq ac-use-menu-map t)
