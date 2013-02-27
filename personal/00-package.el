;;; additional repositories
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))


;; packages
(setq prelude-packages (append '(
                                 ascope
                                 auto-complete
                                 diminish
                                 evil-numbers
                                 linum-off
                                 redo+
                                 simpleclip
                                 sr-speedbar
                                 ssh-config-mode
                                 window-layout
                                 ) prelude-packages))


(setq prelude-auto-install-alist
      (append prelude-auto-install-alist
              '(("\\.cs\\'" csharp-mode))))

;; Installs my packages
(prelude-install-packages)


;;; el-get

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)
