(require 'prelude-packages)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

;; packages
(setq prelude-packages (append '(
                                 ansible-vault
                                 auto-complete
                                 buffer-move
                                 diminish
                                 evil-numbers
                                 flx-ido
                                 flymake-cursor
                                 flymake-python-pyflakes
                                 foreman-mode
                                 ggtags
                                 helm
                                 helm-projectile
                                 js2-mode
                                 linum-off
                                 markdown-mode
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

;; Installs my packages
(prelude-install-packages)
