(add-hook 'go-mode-hook (lambda ()
                          ;; formating options
                          (setq-local indent-tabs-mode t)
                          (setq-local whitespace-style
                                      '(face trailing lines-tail empty indentation space-after-tab space-before-tab))
                          (whitespace-mode t)

                          ;; helper modes
                          (compile-on-save-mode)
                          (flyspell-prog-mode)
                          (rainbow-delimiters-mode t)

                          ;; completion
                          (require 'company-go)
                          (require 'go-guru)
                          ))
