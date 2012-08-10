;;; fonts
(set-face-attribute 'default nil :height 100)

;;; theme

(defvar prelude-personal-themes-dir (concat prelude-dir "themes/"))
(add-to-list 'custom-theme-load-path prelude-personal-themes-dir)

(load-theme 'aisbaa-zenburn t)

;;; nyan-cat
(add-to-list 'load-path (concat prelude-dir "personal/third-party/nyan-mode/"))
(require 'nyan-mode)
(nyan-mode t)
