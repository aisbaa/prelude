;; loads java-mode-hook
(require 'cc-mode)

(add-to-list 'java-mode-hook (lambda ()
                               (setq indent-tabs-mode t)

                               (set-fill-column 100)

                               ;; fixes semantic inner class indentation
                               (c-set-offset 'inexpr-class 0)
                               (c-set-offset 'brace-list-entry 0)
                               (c-set-offset 'brace-list-intro tab-width)
                               (c-set-offset 'brace-entry-open tab-width)
                               (c-set-offset 'annotation-var-cont 0)
                               ))
