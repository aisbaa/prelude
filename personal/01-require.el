;;; package --- stuff I use in other configuration files
;;;
;;; Commentary:
;;;
;;; requires stuff before other files are executed, solves issue with
;;; diminish initialisation, since most modes are no loaded
;;; before diminish function is called

;;; Code:

(require 'auto-complete)
(require 'auto-complete-config)
(require 'buffer-move)
(require 'cmake-mode)
(require 'flyspell)
(require 'guru-mode)
(require 'linum-off)
(require 'rainbow-mode)
(require 'undo-tree)
(require 'whitespace)
(require 'yasnippet)

(provide '01-require)
 ;;; 01-require.el
