(defun aa-un-camelcase-string (s &optional sep start)
  "Convert CamelCase string S to lower case with word separator SEP.
    Default for SEP is a hyphen \"-\".

    If third argument START is non-nil, convert words after that
    index in STRING."
  (let ((case-fold-search nil))
    (while (string-match "[A-Z]" s (or start 1))
      (setq s (replace-match (concat (or sep "-")
                                     (downcase (match-string 0 s)))
                             t nil s))
    (downcase s)))

(defun aa-header-guard (s)
  "Converts string from camel case to header guard format, e.x.:
   IOBinaryWriter -> IO_BINARY_WRITER"
  (upcase (aa-un-camelcase-string s "_")))
