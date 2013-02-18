;;; fonts
(set-face-attribute 'default nil :height 80)


;;; line numbers
(global-linum-mode 1)

(add-to-list 'linum-disabled-modes-list "speedbar-mode" t)


;;; auto-complete
(ac-config-default)

(global-auto-complete-mode t)

(setq ac-comphist-file
      (expand-file-name "ac-comphist.dat" prelude-savefile-dir))

(setq ac-use-quick-help t)
(setq ac-quick-help-delay 0.8)

(ac-set-trigger-key "TAB")
(define-key ac-mode-map (kbd "M-SPC") 'auto-complete)


;;; scroll-bar
(scroll-bar-mode -1)


;;; speed bar
(require 'sr-speedbar)

(custom-set-variables
 '(speedbar-show-unknown-files t))

(global-set-key (kbd "C-c C-t") 'sr-speedbar-toggle)


;;; c-mode
(add-hook 'c-mode-common-hook
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
(diminish 'paredit-mode " π")
(diminish 'prelude-mode " ♪")
(diminish 'projectile-mode " ☄")
(diminish 'rainbow-mode " ☈")
(diminish 'volatile-highlights-mode "")
(diminish 'whitespace-mode " ●")
(diminish 'yas-minor-mode " γ")


;;; projectile adds .svn folder to projectile project root
(if (not (member ".svn" projectile-project-root-files))
    (add-to-list 'projectile-project-root-files ".svn" t))
