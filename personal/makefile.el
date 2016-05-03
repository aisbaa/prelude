;;; makefile-mode
(add-hook 'makefile-mode-hook
          (lambda ()
            ;; recompile on save
            (compile-on-save-mode)
            (auto-complete-mode t)
            (whitespace-mode t)
            ))
