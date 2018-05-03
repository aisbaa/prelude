(require 'flymake-python-pyflakes)


(add-hook 'python-mode-hook (lambda ()
                              ;; linters
                              (require 'flycheck)
                              (flycheck-mode t)

                              ;; completion
                              (require 'company-go)

                              ;; helpers
                              (compile-on-save-mode)
                              (flyspell-prog-mode)
                              (rainbow-delimiters-mode t)
                              (turn-on-fci-mode)
                              (whitespace-mode t)
                              ))
