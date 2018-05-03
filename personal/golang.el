(add-hook 'go-mode-hook (lambda ()
                          ;; formating options
                          (setq-local indent-tabs-mode t)
                          (setq-local whitespace-style
                                      '(face trailing lines-tail empty indentation space-after-tab space-before-tab))
                          (setq-local whitespace-line-column 100)
                          (whitespace-mode t)

                          ;; helper modes
                          (add-hook 'before-save-hook 'gofmt-before-save)
                          (compile-on-save-mode)
                          (flyspell-prog-mode)
                          (rainbow-delimiters-mode t)
                          (turn-on-fci-mode)

                          (require 'go-guru)

                          ;; completion
                          (require 'company-go)
                          (set (make-local-variable 'company-backends) '(company-go))

                          ;; linters
                          (require 'flycheck)
                          (flycheck-mode t)
                          ))
