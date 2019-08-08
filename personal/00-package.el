(require 'prelude-packages)

;; packages
(setq prelude-packages (append '(
                                 ;; ui
                                 company               ; completion framework
                                 fill-column-indicator ; draws a line at X column
                                 helm                  ; interactive completion for emacs commands
                                 helm-projectile       ; helm integration to projectile
                                 rainbow-delimiters    ; collors [non]matching braces
                                 sr-speedbar
                                 buffer-move           ; moves buffers around with mod+arrow key
                                 nord-theme            ; nice blueish theme

                                 ;; go
                                 go-guru
                                 company-go

                                 ;; php
                                 php-mode

                                 ;; python
                                 elpy
                                 flycheck-pycheckers
                                 flycheck-pyflakes

                                 ;; helpers
                                 ggtags
                                 rainbow-mode

                                 ;; other major modes
                                 ansible-vault
                                 markdown-mode
                                 ssh-config-mode
                                 json-mode
                                 nginx-mode
                                 restclient

                                 ;; minor modes
                                 diminish
                                 direnv
                                 evil-numbers
                                 flx-ido
                                 flycheck
                                 multiple-cursors
                                 simpleclip
                                 yasnippet
                                 )
                               prelude-packages))

;; Installs my packages
(prelude-install-packages)
