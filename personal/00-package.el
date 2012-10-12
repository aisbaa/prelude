;; My packages
(setq prelude-packages (append '(ascope
                                 diminish
                                 evil-numbers
                                 redo+
                                 revive
                                 sr-speedbar
                                 window-layout
                                 ) prelude-packages))


(setq prelude-auto-install-alist
      (append prelude-auto-install-alist
              '(("\\.cs\\'" csharp-mode))))

;; Install my packages
(prelude-install-packages)
