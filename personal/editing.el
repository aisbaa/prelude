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
