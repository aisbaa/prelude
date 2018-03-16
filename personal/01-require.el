;;; package --- stuff I use in other configuration files
;;;
;;; Commentary:
;;;
;;; requires stuff before other files are executed, solves issue with
;;; diminish initialisation, since most modes are no loaded
;;; before diminish function is called

;;; Code:

(require 'buffer-move)
(require 'flyspell)
(require 'guru-mode)
(require 'rainbow-mode)
(require 'undo-tree)
(require 'whitespace)

(provide '01-require)
 ;;; 01-require.el
