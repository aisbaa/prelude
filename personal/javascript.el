(require 'js2-mode)

(add-hook 'js-mode-hook (lambda ()
                          (auto-complete-mode t)
                          (compile-on-save-mode)
                          (flyspell-prog-mode)
                          (whitespace-mode t)))
