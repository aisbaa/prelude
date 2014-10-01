;;; cursor
(blink-cursor-mode 1)


(setq flycheck-disabled-checkers '(emacs-lisp-checkdoc))


;;; whitespace cleanup settings.
(ac-set-trigger-key "TAB")
(define-key ac-mode-map (kbd "M-SPC") 'auto-complete)

;;; scroll-bar
(scroll-bar-mode -1)


;;; speed bar
(require 'sr-speedbar)

(custom-set-variables
 '(speedbar-show-unknown-files t))

(global-set-key (kbd "C-c C-t") 'sr-speedbar-toggle)


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
(add-hook 'compilation-mode-hook
          (lambda ()
            (setq display-buffer-reuse-frames t)))


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


;;; diminish mode line
(require 'diminish)

(diminish 'abbrev-mode "ab")
(diminish 'compilation-in-progress " ⌛")
(diminish 'compile-on-save-mode " ∞")
(diminish 'eldoc-mode " eldoc")
(diminish 'flyspell-mode " ✈")
(diminish 'guru-mode "")
(diminish 'smartparens-mode " π")
(diminish 'prelude-mode " ♪")
(diminish 'projectile-mode " ☄")
(diminish 'rainbow-mode " ☈")
(diminish 'volatile-highlights-mode "")
(diminish 'whitespace-mode " ●")
(diminish 'yas-minor-mode " γ")
