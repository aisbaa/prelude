(add-hook 'shell-mode-hook
          (lambda ()
            (require 'helm-eshell)
            ;; fires history search
            (define-key shell-mode-map (kbd "C-r") 'helm-comint-input-ring)))

(add-hook 'sh-mode-hook (lambda ()
                          (flymake-shellcheck-load)
                          (whitespace-mode t)
                          ))

