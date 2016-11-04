(require 'feature-mode)

(add-to-list 'feature-mode-hook (lambda ()
                                  (flyspell-mode t)
                                  (whitespace-mode t)
                                  (compile-on-save-mode)
                                  ))
