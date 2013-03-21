;;; additional repositories
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))


;; packages
(setq prelude-packages (append '(
                                 ascope
                                 auto-complete
                                 diminish
                                 emacs-eclim
                                 evil-numbers
                                 linum-off
                                 redo+
                                 simpleclip
                                 sr-speedbar
                                 ssh-config-mode
                                 window-layout)
                               prelude-packages))


(setq prelude-auto-install-alist
      (append prelude-auto-install-alist
              '(("\\.cs\\'" csharp-mode))))

;; Installs my packages
(prelude-install-packages)
