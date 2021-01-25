;; 把目录lisp/添加到搜索路径中去
(add-to-list
    'load-path 
    (expand-file-name "lisp" user-emacs-directory))
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;;proto
(load-file "~/.emacs.d/protobuf-mode.el")
(setq auto-mode-alist  (cons '(".proto$" . protobuf-mode) auto-mode-alist))


(require 'init-elpa)    ;; 加载ELPA，并定义了require-package函数
(require 'init-utils) ;; 函数定义文件
(require 'init-projectile) ;; 加载projectile 并定义快捷键
(require 'init-common) ;; 加载common 并定义快捷键
(require 'init-ivy) ;; emacs通用命令补全
(require 'init-swiper) ;; 搜索
(require 'init-auto-complete) ;;自动补全
(require 'init-go-mode) ;; golang设置
(require 'init-php-mode) ;; php设置
;;(require 'init-magit) ;;git设置

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(ivy-xref swiper diminish counsel ivy-rich ivy ibuffer-projectile projectile gnu-elpa-keyring-update fullframe seq sql-indent docker markdownfmt markdown-mode+ markdown-mode md-readme zweilight-theme lsp-mode json-rpc-server web-mode gitconfig-mode gitignore-mode git-blamed auto-package-update vdiff-magit spaceline-all-the-icons helm-ag dockerfile-mode php-mode zerodark-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.Vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
