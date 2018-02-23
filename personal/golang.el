(add-hook 'go-mode-hook (lambda ()
                          (setq-local whitespace-style
                                      '(face spaces tabs newline space-mark tab-mark newline-mark))
                          (whitespace-mode t)

                          (compile-on-save-mode)
                          (flyspell-prog-mode)
                          (setq-local  indent-tabs-mode t)
                          (rainbow-delimiters-mode t)))
