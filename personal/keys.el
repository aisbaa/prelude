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


(global-set-key (kbd "C-s") 'isearch-forward)

;; xref
(global-set-key (kbd "M-.") 'xref-find-definitions)

;; pp
(global-set-key (kbd "C-x C-e") 'pp-eval-last-sexp)

;; multicursor
(require 'multiple-cursors)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;; woman
(global-set-key (kbd "<f1>") 'woman)


;;; evil numbers
(global-set-key (kbd "C-+ ") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-- ") 'evil-numbers/dec-at-pt)


;;; recompile
(global-set-key (kbd "C-x C-r") 'recompile)


;;; replace string functionality
(global-set-key (kbd "C-R") 'replace-string)


;;; yas-snippet
(global-set-key (kbd "C-<tab>") 'treemacs)
(global-set-key (kbd "C-x T") 'treemacs) ; for emacs in iterm


;; moves buffers around
(global-set-key (kbd "<C-s-up>")     'buf-move-up)
(global-set-key (kbd "<C-s-down>")   'buf-move-down)
(global-set-key (kbd "<C-s-left>")   'buf-move-left)
(global-set-key (kbd "<C-s-right>")  'buf-move-right)

;; zoom window
(global-set-key (kbd "C-x z") 'zoom-window-zoom)

;; edit multiple selected lies
(global-set-key (kbd "C-c m c") 'mc/edit-lines)

;; folding
(require 'origami)
(global-set-key (kbd "C-c C-c")  'origami-toggle-node)

;; goto line global
(global-set-key (kbd "M-g M-g")  'goto-line)
