;; 把目录lisp/添加到搜索路径中去
(add-to-list
    'load-path 
    (expand-file-name "lisp" user-emacs-directory)
    (expand-file-name "~/.emacs.d/elpa"))
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
			 ("melpa-stable" . "http://stable.melpa.org/packages/")))
(require 'package)

;; 安装use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-verbose t)
(setq use-package-always-ensure t)

(if (not (display-graphic-p))
    (progn
      ;; 增大垃圾回收的阈值，提高整体性能（内存换效率）
      (setq gc-cons-threshold (* 8192 8192))
      ;; 增大同LSP服务器交互时的读取文件的大小
      (setq read-process-output-max (* 1024 1024 128)) ;; 128MB
      ))

;;proto
;; (load-file "~/.emacs.d/protobuf-mode.el")
;; (setq auto-mode-alist  (cons '(".proto$" . protobuf-mode) auto-mode-alist))

(require 'init-basic) ;;基础配置
(require 'init-elpa)    ;; 加载ELPA，并定义了require-package函数
(require 'init-utils) ;; 函数定义文件
(require 'init-which-key) ;; 按键提示插件
(require 'init-dashboard) ;; 启动
(require 'init-swiper) ;; 搜索
(require 'init-keybind) ;;自定义快捷键
(require 'init-projectile) ;; 加载projectile 并定义快捷键
(require 'init-ivy) ;; emacs通用命令补全
(require 'init-ui) ;; eamcs ui设置
;; (require 'init-auto-complete) ;;自动补全
;; (require 'init-go-mode) ;; golang设置
;; (require 'init-php-mode) ;; php设置
;; (require 'init-magit) ;;git设置

 '(package-selected-packages
   '(use-package swiper counsel ivy projectile docker markdownfmt markdown-mode lsp-mode web-mode gitconfig-mode gitignore-mode auto-package-update all-the-icons php-mode go-mode which-key))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode t)
 '(custom-safe-themes
   '("aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "7a424478cb77a96af2c0f50cfb4e2a88647b3ccca225f8c650ed45b7f50d9525" "6945dadc749ac5cbd47012cad836f92aea9ebec9f504d32fe89a956260773ca4" default))
 '(global-hl-line-mode t)
 '(package-selected-packages
   '(ivy-xref swiper counsel ivy-rich diminish ivy ibuffer-projectile projectile gnu-elpa-keyring-update fullframe seq rainbow-delimiters doom-themes hungry-delete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
