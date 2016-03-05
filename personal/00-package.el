;;; package --- additional packages
;;;
;;; Commentary:
;;;
;;; packages that must be installed before other settings execution.
;;;
;;; Code:

(require 'prelude-packages)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

;; packages
(setq prelude-packages (append '(
                                 auto-complete
                                 bm
                                 buffer-move
                                 diminish
                                 evil-numbers
                                 flx-ido
                                 flymake-cursor
                                 flymake-python-pyflakes
                                 foreman-mode
                                 ggtags
                                 highlight-chars
                                 js2-mode
                                 linum-off
                                 nginx-mode
                                 rainbow-delimiters
                                 rainbow-mode
                                 redo+
                                 simpleclip
                                 smex
                                 sr-speedbar
                                 ssh-config-mode
                                 yasnippet
                                 )
                               prelude-packages))

(setq prelude-auto-install-alist
      (append prelude-auto-install-alist
              '(("\\.cs\\'" csharp-mode))))

;; Installs my packages
(prelude-install-packages)


(provide '00-package)
;;; 00-package.el ends here
