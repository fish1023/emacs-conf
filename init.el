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
(require 'init-magit) ;;git设置

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "1068ae7acf99967cc322831589497fee6fb430490147ca12ca7dd3e38d9b552a" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" default)))
 '(package-selected-packages
   '(ivy-xref swiper diminish counsel ivy-rich ivy ibuffer-projectile projectile gnu-elpa-keyring-update fullframe seq sql-indent docker markdownfmt markdown-mode+ markdown-mode md-readme zweilight-theme lsp-mode json-rpc-server web-mode gitconfig-mode gitignore-mode git-blamed auto-package-update vdiff-magit spaceline-all-the-icons helm-ag dockerfile-mode php-mode zerodark-theme)))
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
