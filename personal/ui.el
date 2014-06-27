;;; cursor
(blink-cursor-mode 1)


(setq flycheck-disabled-checkers '(emacs-lisp-checkdoc))


;;; fonts
(set-face-attribute 'default nil :height 80)


;;; whitespace cleanup settings
(setq whitespace-style '(face
                         tabs
                         trailing
                         spaces
                         lines-tail
                         newline
                         empty
                         tab-mark
                         newline-mark))

(setq-default whitespace-line-column nil)

(setq whitespace-display-mappings
      ;; all numbers are Unicode codepoint in decimal. e.g. (insert-char 182 1)
      '(
        (space-mark 32 [183] [46])
        (newline-mark 10 [36 10])
        (tab-mark 9 [187 9] [92 9])
        ))

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
