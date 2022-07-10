;; 下方状态栏设置
(require 'init-awesome-tray)
(awesome-tray-mode 1)
(use-package hide-mode-line
  :ensure t
  :config
  (global-hide-mode-line-mode t))
(use-package solaire-mode
  :ensure t
  :config
  (solaire-global-mode +1))
(unless (featurep 'awesome-tray)
  ;; modeline
  (require 'doom-modeline)
  (doom-modeline-mode t))

;; 高亮当前行
(global-hl-line-mode t)

;; 去除默认启动界面
(setq inhibit-startup-message nil)

;; 弹窗
(use-package posframe)

;; 彩虹括号
(use-package rainbow-delimiters
  :config
  (set-face-foreground 'rainbow-delimiters-depth-1-face "orange red")
  (set-face-foreground 'rainbow-delimiters-depth-2-face "gold")
  (set-face-foreground 'rainbow-delimiters-depth-3-face "yellow")
  (set-face-foreground 'rainbow-delimiters-depth-4-face "spring green")
  (set-face-foreground 'rainbow-delimiters-depth-5-face "cyan")
  (set-face-foreground 'rainbow-delimiters-depth-6-face "magenta")

  (set-face-bold 'rainbow-delimiters-depth-1-face "magenta")
  (set-face-bold 'rainbow-delimiters-depth-2-face "magenta")
  (set-face-bold 'rainbow-delimiters-depth-3-face "magenta")
  (set-face-bold 'rainbow-delimiters-depth-4-face "magenta")
  (set-face-bold 'rainbow-delimiters-depth-5-face "magenta")
  (set-face-bold 'rainbow-delimiters-depth-6-face "magenta")
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  )


(provide 'init-ui)
