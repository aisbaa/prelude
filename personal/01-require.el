;;; requires stuff before other files are executed, solves issue with
;;; diminish initialisation, since most modes are no initialised
;;; before diminish function is called

(require 'auto-complete)
(require 'auto-complete-config)
(require 'flyspell)
(require 'guru-mode)
(require 'linum-off)
(require 'paredit)
(require 'rainbow-mode)
(require 'whitespace)
(require 'yasnippet)
