(require 'prelude-packages)

;; packages
(setq prelude-packages (append '(
                                 ansible-vault
                                 auto-complete
                                 buffer-move
                                 diminish
                                 elpy
                                 evil-numbers
                                 fill-column-indicator
                                 flx-ido
                                 flymake-cursor
                                 flymake-python-pyflakes
                                 ggtags
                                 go-guru
                                 helm
                                 helm-projectile
                                 json-mode
                                 linum-off
                                 markdown-mode
                                 nginx-mode
                                 rainbow-delimiters
                                 rainbow-mode
                                 restclient
                                 simpleclip
                                 smex
                                 sr-speedbar
                                 ssh-config-mode
                                 yasnippet
                                 )
                               prelude-packages))

;; Installs my packages
(prelude-install-packages)
