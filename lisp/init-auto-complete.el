;; init-auto-complete.el

(require 'auto-complete-config)
(global-auto-complete-mode t)

(require 'auto-complete-config)
(global-auto-complete-mode t)
;; 把自定义的dict加到auto-complete的字典中去
(add-to-list 'ac-dictionary-directories
             (expand-file-name "lisp/custom-dicts" user-emacs-directory))
;; 按下TAB时首先缩进所在行，然后尝试补全
(setq tab-always-indent 'complete)

(provide 'init-auto-complete)
