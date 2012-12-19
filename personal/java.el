;;; Adds eclim to java mode

;; provides java-mode-hook
(require 'cc-mode)


(add-to-list 'load-path
             (expand-file-name "third_party/eclim" prelude-personal-dir))
(add-to-list 'load-path
             (expand-file-name "third_party/eclim/vendor" prelude-personal-dir))


(add-to-list 'java-mode-hook
             (lambda ()
               ;; adds eclim to load path
               (require 'eclim)

               ;; adds eclim completion to auto complete list
               (require 'ac-emacs-eclim-source)
               (add-to-list 'ac-sources 'ac-source-emacs-eclim)))
