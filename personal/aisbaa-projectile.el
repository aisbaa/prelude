(require 'projectile)

(setq projectile-globally-ignored-directories
      (append '(".obj") projectile-globally-ignored-directories))


;; projects that I work with are in svn or git
(setq projectile-project-root-files '(".svn" ".git"))


;; projectile
(projectile-global-mode)

(setq projectile-completion-system 'helm)
(setq projectile-enable-caching t)
(setq projectile-switch-project-action 'helm-projectile)
(setq projectile-use-git-grep t)
