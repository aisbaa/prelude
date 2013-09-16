;; loads java-mode-hook
(require 'cc-mode)

(setq eclim-executable
      "/usr/share/eclipse/plugins/org.eclim_2.2.5/bin/eclim")

(setq eclimd-default-workspace "~/workspace")

(setq aisbaa-eclim-initialised nil)

(defun aisbaa-init-eclim ()
  (unless aisbaa-eclim-initialised
    (message "aisbaa-java::initialising eclim")

   (require 'eclim)
   (require 'eclimd)
   (eclim-mode t)

   ;; add the emacs-eclim source
   (require 'ac-emacs-eclim-source)
   (ac-emacs-eclim-config)

   (setq aisbaa-eclim-initialised t)))


(add-to-list 'java-mode-hook (lambda ()
                               ;; eclim
                               ;; (aisbaa-init-eclim)

                               ;; compile on save off
                               (compile-on-save-mode nil)

                               (set-fill-column 100)

                               ;; fixes semantic inner class indentation
                               (c-set-offset 'inexpr-class 0)
                               (c-set-offset 'brace-list-entry 0)
                               (c-set-offset 'brace-list-intro tab-width)
                               (c-set-offset 'brace-entry-open tab-width)
                               (c-set-offset 'annotation-var-cont 0)
                               ))
