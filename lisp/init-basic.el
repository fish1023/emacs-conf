;; init-basic
;; 基础配置

;; yes/no to y/n
(fset 'yes-or-no-p'y-or-n-p)

;;隐藏菜单栏
(menu-bar-mode -1)

;; 关闭空格显示
(setq prelude-whitespace nil)

;; 关闭备份
(setq make-backup-files nil auto-save-default nil)

;; 总是加载最近文件
(setq load-prefer-newer t)

;; 设置缩进
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))

;; 设置用户目录
(setq user-emacs-directory "~/.emacs.d/var")
;; 设置最近打开文件缓存的路径
(setq recentf-save-file "~/.emacs.d/var/recentf")
;; 设置自动保存路径
(setq aoto-save-list-file-prefix "~/.emacs.d/var/auto-save-list/.saves-")
;; 设置eshll历史记录
(setq eshell-history-file-name "~/.emacs.d/var/eshell/history")

;; 编码使用utf-8
(set-charset-priority 'unicode)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

;; 高亮括号
(show-paren-mode 1)

;; mac不支持ls --dired
(when (string= system-type "darwin")       
  (setq dired-use-ls-dired nil))

(provide 'init-basic)
