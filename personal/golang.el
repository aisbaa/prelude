(add-hook 'go-mode-hook
          (lambda ()
            (whitespace-mode t)
            (compile-on-save-mode)
            (flyspell-prog-mode)
            (rainbow-delimiters-mode t)
            ))
