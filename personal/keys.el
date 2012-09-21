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
(require 'redo+)
(global-set-key (kbd "M-_") 'redo)


;;; recompile
(global-set-key (kbd "C-c C-r") 'recompile)


;;; evaluate Emacs lisp and replace it with result
(defun fc-eval-and-replace ()
  "Replace the preceding sexp with its value, f.e. (+ 1 1 1)
would be replaces with 3."
  (interactive)
  (backward-kill-sexp)
  (condition-case nil
      (prin1 (eval (read (current-kill 0)))
             (current-buffer))
    (error (message "Invalid expression")
           (insert (current-kill 0)))))

(global-set-key (kbd "C-x e") 'fc-eval-and-replace)
