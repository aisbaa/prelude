;;; package --- projectile settings
;;;
;;; Commentary:
;;;
;;; Additional settings to projectile module.
;;;
;;; Code:

(require 'projectile)

(setq projectile-globally-ignored-directories
      (append '(".obj") projectile-globally-ignored-directories))


;; projects that I work with are in svn or git
(setq projectile-project-root-files '(".svn" ".git"))


;; projectile
(setq projectile-enable-caching t)



(defun aisbaa-init-ascope ()
  "Initialize ascope to the opened project."
  (interactive)
  (require 'ascope)
  (ascope-init (projectile-project-root)))


(provide 'aisbaa-projectile)
;;; aisbaa-projectile.el ends here
