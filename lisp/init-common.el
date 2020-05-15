;; init-common


;; yes/no to y/n
(fset 'yes-or-no-p'y-or-n-p)
;;隐藏菜单栏
(menu-bar-mode -1)
;; 关闭空格
(setq prelude-whitespace nil)
;; Always load newest byte code
(setq load-prefer-newer t)
;; Align your code in a pretty way.
(global-set-key (kbd "C-x \\") 'align-regexp)
;; Font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

(setq auto-save-default nil) ;; 默认值是t， 要关闭直接用nil更改默认值
(setq make-backup-files nil)

;; 设置缩进
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))

;;重新加载配置文件
;; (global-set-key [F5] 'Load-File)
;;快速打开配置文件
(defun Open-Init-File()
  (Interactive)
  (Find-file "~/.emacs.d/init.el"))
;; (global-set-key [f2] 'open-init-file)
;;插件安装
;; (global-set-key [f1] 'package-install)

;;复制搜索替换
(global-set-key (kbd "C-o") 'query-replace)
;; (global-set-key [f4] 'helm-projectile-ag)

;; 主题
(load-theme 'zerodark t)
;; Optionally setup the modeline
(zerodark-setup-modeline-format)

(provide 'init-common)
;;; init-ivy.el ends here
