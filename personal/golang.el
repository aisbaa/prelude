(add-hook 'go-mode-hook (lambda ()
                          (setq-local indent-tabs-mode t)
                          (setq-local whitespace-style
                                      '(face trailing lines-tail empty indentation space-after-tab space-before-tab))
                          (whitespace-mode t)

                          (compile-on-save-mode)
                          (flyspell-prog-mode)
                          (setq-local  indent-tabs-mode t)
                          (rainbow-delimiters-mode t)))
