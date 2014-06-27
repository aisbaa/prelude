;;; package --- Summary
;;; Commentary:
;;; Code:

(defun aa-un-camelcase-string (s &optional sep start)
  "Convert CamelCase string S to lower case with word separator SEP.
    Default for SEP is a hyphen \"-\".

    If third argument START is non-nil, convert words after that
    index in STRING."
  (let ((case-fold-search nil))
    (while (string-match "[A-Z]" s (or start 1))
      (setq s (replace-match (concat (or sep "-")
                                     (downcase (match-string 0 s)))
                             t nil s)))
    (upcase s)))

(defun aa-header-guard (s)
  "Convert string from camel case to header guard format, e.x.:
S is string, e.x.: NIoBinaryWriter -> N_IO_BINARY_WRITER"
  (upcase (aa-un-camelcase-string s "_" 1)))
(provide 'snippets)
;;; snippets.el ends here
