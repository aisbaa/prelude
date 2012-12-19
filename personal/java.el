(add-to-list 'load-path
             (expand-file-name "third_party/eclim" prelude-personal-dir))
(add-to-list 'load-path
             (expand-file-name "third_party/eclim/vendor" prelude-personal-dir))

(add-to-list 'load-path (expand-file-name "/path/to/emacs-eclim/"))
;; only add the vendor path when you want to use the libraries provided with emacs-eclim
(add-to-list 'load-path (expand-file-name "~/coding/git/emacs-eclim/vendor"))
(require 'eclim)

(setq eclim-auto-save nil)
(global-eclim-mode 1)


(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(ac-emacs-eclim-config)

(add-to-list 'java-mode-hook (lambda ()
                               (setq inexpr-class 0)
                               (eclim-mode t)))
