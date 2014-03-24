;;; lua.el --- settings for lua-mode
;;; Commentary:
;;; Code:


(require 'lua-mode)

;;; lua
(add-hook 'lua-mode-hook (lambda ()
                           (setq tab-width aisbaa-default-tab-width)
                           (setq lua-indent-level tab-width)
                           (setq indent-tabs-mode t)))


(provide 'aisbaa-lua-settings)
;;; lua.el ends here
