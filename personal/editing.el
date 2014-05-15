;;; fill column
(setq-default fill-column 78)

;;; indentation
(setq-default indent-tabs-mode nil)

;;; c-mode
(add-hook 'c-mode-common-hook
          (lambda ()
            ;; changes indentation mode to tabs
            (setq indent-tabs-mode t)

            ;; setting tab-width
            (setq tab-width aisbaa-default-tab-width)

            ;; setting offset to match tab width
            (setq c-basic-offset tab-width)

            ;; turns on semantic indentation
            (setq c-syntactic-indentation t)

            ;; sets column limit to 78th character
            (set-fill-column 78)

            ;; line numbers
            (linum-mode t)

            ;; whitespace-mode
            (whitespace-mode t)

            ;; recompile on save
            (compile-on-save-mode)

            ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            ;; semantic indentation settings ;;
            ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

            ;; sets one level indentation for function calls that has to many
            ;; arguments to fit it all in one line
            (c-set-offset 'arglist-cont-nonempty '+)

            (c-set-offset 'arglist-intro '+)

            ;; indent closing function call brace
            (c-set-offset 'arglist-close 0)

            ;; braces after if/for/while/etc
            (c-set-offset 'substatement-open 0)

            ;; firs line in function definition
            (c-set-offset 'defun-block-intro '+)

            ;; indenting after block opening statement
            (c-set-offset 'statement-block-intro '+)

            ;; if/for/while/etc without opening braces
            (c-set-offset 'substatement '+)

            ;; case
            (c-set-offset 'statement-case-intro '+)

            ;; continue after \
            (c-set-offset 'statement-cont '+)

            ;; start of comment
            (c-set-offset 'comment-intro 0)

            ;; structure and probably class indentation
            (c-set-offset 'inclass '+)

            ;; inside extern "C" { }
            (c-set-offset 'inextern-lang 0)))

;; these are separate because c-mode-common-hook is also used by java mode,
;; probably may other too
(add-hook 'c++-mode-hook (lambda ()
                         (cwarn-mode)))


(add-hook 'c-mode-hook (lambda ()
                         (cwarn-mode)))


;;; html-mode
(add-hook 'html-mode-hook (lambda ()
                            (auto-complete-mode t)
                            (whitespace-mode t)))


;;; makefile-mode
(add-hook 'makefile-mode-hook
          (lambda ()
            ;; recompile on save
            (compile-on-save-mode)))

;; cmake
(add-hook 'cmake-mode-hook (lambda ()
                             (setq tab-width aisbaa-default-tab-width)
                             (setq cmake-tab-width tab-width)
                             (setq indent-tabs-mode t)
                             (whitespace-mode t)))

;;; minor modes
(yas-global-mode 1)
