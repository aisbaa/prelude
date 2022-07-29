;;; global
(menu-bar-mode +1)

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


;;; company mode autocompletion settings
(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0)                          ; remove annoying blinking

(add-hook 'after-init-hook 'global-company-mode)


;;; scroll-bar
(scroll-bar-mode -1)


;;; compilation
(setq compilation-scroll-output t)
(add-hook 'compilation-mode-hook
          (lambda ()
            (setq display-buffer-reuse-frames t)))

(require 'whitespace)
(global-whitespace-mode t)

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

;; desktop mode
(desktop-save-mode 1)
(require 'desktop+)
