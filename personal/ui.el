;;; fonts
(set-face-attribute 'default nil :height 90)


;;; theme
;; (defvar prelude-personal-themes-dir (concat prelude-dir "themes/"))
;; (add-to-list 'custom-theme-load-path prelude-personal-themes-dir)

;; (load-theme 'aisbaa-zenburn t)


;;; line numbers
(global-linum-mode -1)


;;; speed bar
(require 'sr-speedbar)

(custom-set-variables
 '(speedbar-show-unknown-files t))

(global-set-key (kbd "C-c C-t") 'sr-speedbar-toggle)


;;; c-mode
(add-hook 'c-mode-hook
          (lambda ()
            (linum-mode t)
            (semantic-mode t)
            (semantic-stickyfunc-mode t)))


;;; lisp-mode

;;; adding line number to each lisp mode
(dolist (hook '(lisp-mode-hook
                common-lisp-mode-hook
                emacs-lisp-mode-hook
                lisp-interaction-mode-hook))
  (add-hook hook (lambda ()
                   (linum-mode t))))


;;; compilation
(setq compilation-scroll-output t)

(defun aisbaa-compilation-layout ()
  "Splits windows for compilation and log monitoring:
|--------------------|
| log file           |
|--------------------|
| compilation buffer |
|--------------------|
"
  ;; (delete-other-windows)
  (wlf:layout
   '(- (:upper-size-ratio 0.2)
       log-file
       compilation)
   '((:name log-file :buffer "*scratch*")
     (:name compilation :buffer "*compilation*")))
  "compilation layout")

(global-set-key (kbd "C-x c 1") 'aisbaa-compilation-layout)
