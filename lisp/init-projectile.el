;;; init projectile.el
(use-package projectile
  :ensure t)
(use-package helm-projectile
  :ensure t)

(when (maybe-require-package 'projectile)
  (add-hook 'after-init-hook 'projectile-mode)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; 默认全局使用
(projectile-global-mode)
;; 默认打开缓存
(setq projectile-enable-caching t)
;; 使用f5键打开默认文件搜索
(global-set-key [f5] 'projectile-find-file)

  (maybe-require-package 'ibuffer-projectile))

;; (setq helm-projectile-fuzzy-match nil)
(helm-projectile-on)

(provide 'init-projectile)
