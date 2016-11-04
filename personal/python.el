(require 'flymake-python-pyflakes)
;; (require 'sphinx-doc)

(add-hook 'python-mode-hook
          (lambda ()
            (flymake-python-pyflakes-load)
            (auto-complete-mode t)
            (whitespace-mode t)
            (compile-on-save-mode)
            ;; (sphinx-doc-mode t)
            (flyspell-prog-mode)
            (rainbow-delimiters-mode t)))

;; ((lambda nil (set (make-local-variable (quote yas-indent-line))
;;                   (quote fixed)))
;;  er/add-python-mode-expansions (lambda nil (flymake-python-pyflakes-load)
;;                                  (auto-complete-mode t)
;;                                  (whitespace-mode t)
;;                                  (compile-on-save-mode)
;;                                  (require (quote sphinx-doc))
;;                                  (sphinx-doc-mode t)
;;                                  (flyspell-prog-mode)
;;                                  (rainbow-delimiters-mode t)))


(setq flymake-python-pyflakes-executable "flake8")

(add-hook 'compilation-mode-hook
          (lambda ()
            (highlight-regexp "ERROR" 'hi-red-b)
            (highlight-regexp "FAILED" 'hi-red-b)
            (highlight-regexp "PASSED" 'hi-green-b)
            (highlight-regexp "Assertion Failed:" 'hi-pink)))

;; setting aspell for 
(if (string-equal system-type "darwin")
    (setq ispell-program-name "/Users/aistisjokubauskas/opt/bin/aspell"))
