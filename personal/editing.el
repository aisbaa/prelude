;;; fill column
(setq-default fill-column 78)


;;; useful functions

(defun sort-words (reverse beg end)
  "Sort words in region alphabetically, in REVERSE if negative.
    Prefixed with negative \\[universal-argument], sorts in reverse.

    The variable `sort-fold-case' determines whether alphabetic case
    affects the sort order.

    See `sort-regexp-fields'."
  (interactive "*P\nr")
  (sort-regexp-fields reverse "\\w+" "\\&" beg end))

;;; indentation
(setq-default indent-tabs-mode nil)

;;; html-mode
(add-hook 'html-mode-hook (lambda ()
                            (auto-complete-mode t)
                            (whitespace-mode t)))


;;; makefile-mode
(add-hook 'makefile-mode-hook
          (lambda ()
            ;; recompile on save
            (compile-on-save-mode)))


;;; minor modes
(yas-global-mode 1)
