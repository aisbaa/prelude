;; loads java-mode-hook
(require 'cc-mode)

(add-to-list 'java-mode-hook (lambda ()
                               (setq indent-tabs-mode nil
                                     c-basic-offset 4)

                               (set-fill-column 80)
                               (whitespace-mode t)
                               (auto-complete-mode t)

                               ;; fixes semantic inner class indentation
                               (c-set-offset 'inexpr-class 0)
                               (c-set-offset 'brace-list-entry 0)
                               (c-set-offset 'brace-list-intro tab-width)
                               (c-set-offset 'brace-entry-open tab-width)
                               (c-set-offset 'annotation-var-cont 0)
                               ))
