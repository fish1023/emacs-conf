(require 'awesome-tray)

(defun meow-module-info()
  (meow-indicator))
(defface meow-module-face ()
  ""
  :group 'awesome-tray)

(add-to-list 'awesome-tray-module-alist
	     '("meow" . (meow-module-info meow-module-face)))

(setq awesome-tray-active-modules '("meow" "location" "buffer-name" "mode-name" "battery" "git"))
(setq awesome-tray-info-padding-right 5)
;; (setq awesome-tray-active-modules '("meow","location","buffer-name"))

(set-face-attribute 'awesome-tray-module-location-face nil
		    :foreground "#6c71c4"
		    :weight 'normal)

(set-face-attribute 'awesome-tray-module-buffer-name-face nil
		    :foreground "#859900"
		    :weight 'normal)

(set-face-attribute 'awesome-tray-module-mode-name-face nil
		    :foreground "#268bd2"
		    :weight 'normal)

(set-face-attribute 'awesome-tray-module-battery-face nil
		    :foreground "#2aa198"
		    :weight 'normal)

(set-face-attribute 'awesome-tray-module-date-face nil
		    :foreground "#b58900"
		    :weight 'normal)


(awesome-tray-mode)

(provide 'init-awesome-tray)
