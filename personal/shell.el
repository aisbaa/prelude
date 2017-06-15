(add-hook 'shell-mode-hook
          (lambda ()
            (require 'helm-eshell)
            ;; fires history search
            (define-key shell-mode-map (kbd "C-r") 'helm-comint-input-ring)))
