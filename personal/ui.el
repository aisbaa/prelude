;;; fonts
(set-face-attribute 'default nil :height 90)


;;; theme
(defvar prelude-personal-themes-dir (concat prelude-dir "themes/"))
(add-to-list 'custom-theme-load-path prelude-personal-themes-dir)

(load-theme 'aisbaa-zenburn t)


;;; c-mode
(add-hook 'c-mode-common-hook
          (lambda ()
            (semantic-mode t)
            (semantic-stickyfunc-mode t)))
