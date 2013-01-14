(add-to-list 'load-path
             (expand-file-name "third_party/eclim" prelude-personal-dir))
(add-to-list 'load-path
             (expand-file-name "third_party/eclim/vendor" prelude-personal-dir))

(require 'eclim)
(require 'eclimd)

;; When the cursor is positioned on an error marker in a code buffer,
;; emacs-eclim uses the local help feature in emacs to display the
;; corresponding error message in the echo area. You can either invoke
;; (display-local-help) manually or activate automatic display of
;; local help by adding the following to .emacs:
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

;; loads ac-emacs-eclim-java-setup function
(require 'ac-emacs-eclim-source)

;; loads java-mode-hook
(require 'cc-mode)

(add-to-list 'java-mode-hook (lambda ()
                               ;; fixes semantic inner class indentation
                               (setq inexpr-class tab-width)

                               ;; turns on eclim mode
                               (eclim-mode t)

                               ;; does not save on each completion
                               (setq eclim-auto-save nil)

                               ;; adds eclim to ac-completion
                               (ac-emacs-eclim-java-setup)))
