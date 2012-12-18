;;; Adds eclim to java mode
(add-to-list 'load-path (expand-file-name "third_party/eclim"))

(add-to-list 'java-mode-hook
             (lambda ()
               ;; adds eclim to load path
               (require 'eclim)

               ;; adds eclim completion to auto complete list
               (require 'ac-emacs-eclim-source)
               (add-to-list 'ac-sources 'ac-source-emacs-eclim)))
