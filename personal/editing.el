;;; whitespace cleanup settings
(setq whitespace-style '(face
                         tabs
                         spaces
                         trailing
                         lines
                         newline
                         empty
                         space-mark
                         tab-mark
                         newline-mark))

(setq-default indent-tabs-mode nil)   ;; at work I have to indent with tabs
(setq-default c-tab-always-indent t)
(setq-default c-syntactic-indentation t)


;;; c-mode
(add-hook 'c-mode-common-hook
          (lambda ()
            ;; sets one level indentation for function calls that has to many
            ;; arguments to fit it all in one line
            (c-set-offset 'arglist-cont-nonempty tab-width)

            (c-set-offset 'arglist-intro tab-width)

            ;; indent closing function call brace
            (c-set-offset 'arglist-close 0)

            ;; braces after if/for/while/etc
            (c-set-offset 'substatement-open 0)

            ;; firs line in function definition
            (c-set-offset 'defun-block-intro tab-width)

            ;; indenting after block opening statement
            (c-set-offset 'statement-block-intro tab-width)

            ;; if/for/while/etc without opening braces
            (c-set-offset 'substatement tab-width)

            ;; case
            (c-set-offset 'statement-case-intro tab-width)

            ;; start of comment
            (c-set-offset 'comment-intro 0)

            ;; structure and probably class indentation
            (c-set-offset 'inclass tab-width)

            ;; inside extern "C" { }
            (c-set-offset 'inextern-lang 0)

            ;; setting offset to match tab width
            (setq c-basic-offset tab-width)))
