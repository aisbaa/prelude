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
                                 buffer-move
                                 cmake-mode
                                 diminish
                                 evil-numbers
                                 flx-ido
                                 flymake-cursor
                                 ggtags
                                 linum-off
                                 redo+
                                 simpleclip
                                 smex
                                 sr-speedbar
                                 ssh-config-mode
                                 window-layout
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
