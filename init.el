;; 把目录lisp/添加到搜索路径中去
(add-to-list
    'load-path 
    (expand-file-name "lisp" user-emacs-directory))
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(require 'init-elpa)    ;; 加载ELPA，并定义了require-package函数
(require 'init-utils) ;; 函数定义文件
(require 'init-projectile) ;; 加载projectile 并定义快捷键
(require 'init-common) ;; 加载common 并定义快捷键
(require 'init-ivy) ;; emacs通用命令补全
(require 'init-swiper) ;; 搜索
(require 'init-auto-complete) ;;自动补全
(require 'init-go-mode) ;; golang设置

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ivy-xref swiper diminish counsel ivy-rich ivy ibuffer-projectile projectile gnu-elpa-keyring-update fullframe seq))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
