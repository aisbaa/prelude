(defun aisbaa-find-semantic-db-root-revision (directory)
  "Tries to find projects root containing revision system
file/folder. For example given directory in from git repository,
it returns directory containing '.git' folder."
  (loop for file in projectile-project-root-files
        when (locate-dominating-file directory file)
        do (return it)))


(setq semanticdb-project-root-functions
      '(aisbaa-find-semantic-db-root-revision))
