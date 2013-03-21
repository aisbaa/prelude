;; insert time, todo move this to some other file
(defun aisbaa-insert-time()
  "Inserts current time."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %R")))

(global-set-key (kbd "C-x t ") 'aisbaa-insert-time)


;;; woman
(global-set-key (kbd "<f1>") 'woman)


;;; evil numbers
(global-set-key (kbd "C-+ ") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-- ") 'evil-numbers/dec-at-pt)


;;; redo+
;; (require 'redo+)
;; (global-set-key (kbd "M-_") 'redo)


;;; recompile
(global-set-key (kbd "C-c C-r") 'recompile)


;;; replace string functionality
(global-set-key (kbd "C-R") 'replace-string)


;;; sort lines
(global-set-key (kbd "C-c S") 'sort-lines)


;;; frames
(global-set-key (kbd "C-x O") 'other-frame)


;;; yas-snippet
(global-set-key (kbd "C-<tab>") 'yas-expand)
