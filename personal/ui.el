;;; helm

(helm-autoresize-mode t)
(setq helm-split-window-in-side-p t)

;;; cursor
(blink-cursor-mode 1)
(setq x-stretch-cursor 1)


;; fill-column mode (draws a line at 79th column)
(setq fci-rule-color "#6f6f6f")
(setq fci-rule-column 79)


;; smartparren
(smartparens-global-mode t)


;;; autocomplete settings
(global-auto-complete-mode t)
(ac-set-trigger-key "TAB")
(customize-set-variable 'ac-auto-show-menu 0.001)

;;; scroll-bar
(scroll-bar-mode -1)


;;; speed bar
(require 'sr-speedbar)

(custom-set-variables
 '(speedbar-show-unknown-files t))

;; (global-set-key (kbd "C-c C-t") 'sr-speedbar-toggle)



;;; lisp-mode

(setq flycheck-disabled-checkers '(emacs-lisp-checkdoc))

;;; enabling linum-mode for these modes
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
