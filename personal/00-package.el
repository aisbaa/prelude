(require 'prelude-packages)

;; packages
(setq prelude-packages (append '(
                                 ;; ui
                                 company               ; completion framework
                                 helm                  ; interactive completion for emacs commands
                                 helm-projectile       ; helm integration to projectile
                                 rainbow-delimiters    ; collors [non]matching braces
                                 treemacs-projectile   ; project/file browser
                                 buffer-move           ; moves buffers around with mod+arrow key
                                 zoom-window           ; similar to zoom in tmux
                                 origami               ; folds code (yaml)

                                 ;; bazel
                                 bazel

                                 ;; kubernetes
                                 k8s-mode

                                 ;; lsp
                                 lsp-mode
                                 lsp-ui
                                 ;; company-lsp

                                 ;; go
                                 ;; go-guru
                                 ;; company-go

                                 ;; lua
                                 lua-mode

                                 ;; jsonnet
                                 jsonnet-mode

                                 ;; python
                                 elpy
                                 flycheck-pycheckers
                                 flycheck-pyflakes

                                 ;; shell
                                 flymake-shellcheck

                                 ;; helpers
                                 ;; ggtags
                                 use-package

                                 ;; other major modes
                                 json-mode
                                 markdown-mode
                                 nginx-mode
                                 ssh-config-mode
                                 systemd

                                 ;; http client
                                 restclient

                                 ;; minor modes
                                 rainbow-mode
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
