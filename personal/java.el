;; loads java-mode-hook
(require 'cc-mode)

(add-to-list 'java-mode-hook (lambda ()
                               ;; fixes semantic inner class indentation
                               (setq inexpr-class tab-width)
                               ))
