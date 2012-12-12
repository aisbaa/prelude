;;; additional repositories
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))


;; packages
(setq prelude-packages (append '(
                                 auto-complete
                                 ascope
                                 diminish
                                 evil-numbers
                                 redo+
                                 sr-speedbar
                                 simpleclip
                                 ssh-config-mode
                                 window-layout
                                 ) prelude-packages))


(setq prelude-auto-install-alist
      (append prelude-auto-install-alist
              '(("\\.cs\\'" csharp-mode))))

;; Install my packages
(prelude-install-packages)
