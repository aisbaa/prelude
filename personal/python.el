(require 'flymake)
(load-library "flymake-cursor")

;; Script that flymake uses to check code. This script must be
;; present in the system path.
(setq pycodechecker "a_pychecker.sh")

(when (load "flymake" t)
  (defun flymake-pycodecheck-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list pycodechecker (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pycodecheck-init)))

(add-hook 'python-mode-hook 'flymake-mode)


(add-hook 'python-mode-hook (lambda () 
                              (auto-complete-mode t)
                              (whitespace-mode t)
                              (compile-on-save-mode)
                              (flyspell-prog-mode)))

;; setting aspell for 
(if (string-equal system-type "darwin")
    (setq ispell-program-name "/Users/aistisjokubauskas/opt/bin/aspell"))
