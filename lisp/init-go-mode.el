;; init-go-mode.el
(add-to-list 'load-path "~/workspace/go/src/github.com/dougm/goflymake")
(require 'go-flymake)
(require 'go-autocomplete)
(require 'auto-complete-config)

;;go 快捷键
(global-set-key (kbd "C-c C-g a") 'go-goto-arguments)
(global-set-key [kbd "C-c C-g d"] 'go-goto-docstring)
(global-set-key (kbd "C-c C-g f") 'go-goto-function)
(global-set-key (kbd "C-c C-g i") 'go-goto-imports)


;; go fmt
(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'init-go-mode)
