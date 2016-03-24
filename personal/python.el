(require 'flymake-python-pyflakes)

(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

(add-hook 'python-mode-hook (lambda () 
                              (auto-complete-mode t)
                              (whitespace-mode t)
                              (compile-on-save-mode)
                              (require 'sphinx-doc)
                              (sphinx-doc-mode t)
                              (flyspell-prog-mode)
                              (rainbow-delimiters-mode t)
                              )
          )

(setq flymake-python-pyflakes-executable "flake8")

(add-hook 'compilation-mode-hook (lambda ()
                                   (highlight-regexp "ERROR" 'hi-red-b)
                                   (highlight-regexp "FAILED" 'hi-red-b)
                                   (highlight-regexp "PASSED" 'hi-green-b)
                                   (highlight-regexp "Assertion Failed:" 'hi-pink)
                                   ))

;; setting aspell for 
(if (string-equal system-type "darwin")
    (setq ispell-program-name "/Users/aistisjokubauskas/opt/bin/aspell"))
