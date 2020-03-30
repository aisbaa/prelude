;; insert time, todo move this to some other file
(defun aisbaa-insert-time()
  "Inserts current time."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %R")))

(global-set-key (kbd "C-x t ") 'aisbaa-insert-time)


;; opening files
(require 'ido)
(ido-mode t)
(global-set-key (kbd "C-x b") 'ido-switch-buffer)
(global-set-key (kbd "C-x C-f") 'ido-find-file)

;; helm integration
(require 'helm)
(helm-mode t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-M-s") 'helm-occur)
(global-set-key (kbd "M-.") 'helm-etags-select)


(global-set-key (kbd "C-s") 'isearch-forward)


;;; woman
(global-set-key (kbd "<f1>") 'woman)


;;; evil numbers
(global-set-key (kbd "C-+ ") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-- ") 'evil-numbers/dec-at-pt)


;;; recompile
(global-set-key (kbd "C-c C-r") 'recompile)


;;; replace string functionality
(global-set-key (kbd "C-R") 'replace-string)


;;; yas-snippet
(global-set-key (kbd "C-<tab>") 'yas-expand)


;; moves buffers around
(global-set-key (kbd "<C-s-up>")     'buf-move-up)
(global-set-key (kbd "<C-s-down>")   'buf-move-down)
(global-set-key (kbd "<C-s-left>")   'buf-move-left)
(global-set-key (kbd "<C-s-right>")  'buf-move-right)
