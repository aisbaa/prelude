(require 'flymake-python-pyflakes)

(add-hook 'python-mode-hook
          (lambda ()
            (flymake-python-pyflakes-load)
            (auto-complete-mode t)
            (whitespace-mode t)
            (compile-on-save-mode)
            ;; (sphinx-doc-mode t)
            (flyspell-prog-mode)
            (rainbow-delimiters-mode t)))


(setq flymake-python-pyflakes-executable "flake8")

(add-hook 'compilation-mode-hook
          (lambda ()
            (highlight-regexp "ERROR" 'hi-red-b)
            (highlight-regexp "FAILED" 'hi-red-b)
            (highlight-regexp "PASSED" 'hi-green-b)
            (highlight-regexp "Assertion Failed:" 'hi-pink)))
