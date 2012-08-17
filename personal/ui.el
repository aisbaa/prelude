;;; fonts
(set-face-attribute 'default nil :height 100)

;;; theme

(defvar prelude-personal-themes-dir (concat prelude-dir "themes/"))
(add-to-list 'custom-theme-load-path prelude-personal-themes-dir)

(load-theme 'aisbaa-zenburn t)
