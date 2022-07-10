
;;重新加载配置文件
(global-set-key [F5] 'Load-File)
;;快速打开配置文件
(defun Open-Init-File()
  (Interactive)
  (Find-file "~/.emacs.d/init.el"))
(global-set-key [f2] 'open-init-file)
;; 插件安装
(global-set-key [f1] 'package-install)

;;复制搜索替换
(global-set-key (kbd "C-o") 'query-replace)
(global-set-key [f4] 'helm-projectile-grep)

(provide 'init-keybind)
