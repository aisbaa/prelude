;;; helm

(helm-autoresize-mode t)

(setq
 helm-autoresize-max-height                      40 ; it is %.
 helm-autoresize-min-height                      20 ; it is %.
 )

;;; cursor
(blink-cursor-mode 1)
(setq x-stretch-cursor 1)


;; smartparren
(smartparens-global-mode t)


;;; whitespace cleanup settings.
(global-auto-complete-mode t)
(ac-set-trigger-key "TAB")
;; (define-key ac-mode-map (kbd "M-SPC") 'auto-complete)

;;; scroll-bar
(scroll-bar-mode -1)


;;; speed bar
(require 'sr-speedbar)

(custom-set-variables
 '(speedbar-show-unknown-files t))

(global-set-key (kbd "C-c C-t") 'sr-speedbar-toggle)



;;; lisp-mode

(setq flycheck-disabled-checkers '(emacs-lisp-checkdoc))

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
