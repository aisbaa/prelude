;; loads java-mode-hook
(require 'cc-mode)

(setq eclim-executable "~/opt/eclipse/eclim")

(setq eclimd-default-workspace "~/dev")

(add-to-list 'java-mode-hook (lambda ()
                               ;; eclim
                               (require 'eclim)
                               (eclim-mode t)

                               ;; compile on save off
                               (compile-on-save-mode nil)

                               ;; fixes semantic inner class indentation
                               (setq inexpr-class tab-width)
                               ))
