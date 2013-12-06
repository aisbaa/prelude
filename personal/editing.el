;;; fill column
(setq-default fill-column 78)

;;; indentation
(setq-default indent-tabs-mode nil)

;;; c-mode
(add-hook 'c-mode-common-hook
          (lambda ()
            ;; changes indentation mode to tabs
            (setq indent-tabs-mode t)

            ;; setting offset to match tab width
            (setq c-basic-offset tab-width)

            ;; turns on semantic indentation
            (setq c-syntactic-indentation t)

            ;; sets column limit to 78th character
            (set-fill-column 78)

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
            (c-set-offset 'inextern-lang 0)

            ;; adds quick symbol find solution
            (require 'ascope)

            (local-set-key (kbd "C-c C-s") 'ascope-find-global-definition)

            ;; show assembler
            (require 'disaster)

            (local-set-key (kbd "C-c C-d") 'disaster)

            ;; whitespace-mode
            (whitespace-mode t)

            ;; recompile on save
            (compile-on-save-mode)))


(add-hook 'c++-mode-hook (lambda ()
                         (cwarn-mode)))


(add-hook 'c-mode-hook (lambda ()
                         (require 'cmake-mode)
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


;;; luad
(add-hook 'lua-mode-hook (lambda ()
                           (setq tab-width 8)
                           (setq lua-indent-level tab-width)
                           (setq indent-tabs-mode t))

;;; minor modes
(yas-global-mode 1)
