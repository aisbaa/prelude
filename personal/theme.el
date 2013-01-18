;;; whitespace cleanup settings
(setq whitespace-style '(face
                         tabs
                         trailing
                         spaces
                         lines
                         newline
                         empty
                         tab-mark
                         newline-mark))

(setq-default indent-tabs-mode nil)


(setq whitespace-display-mappings
      '((space-mark   ?\    [?\xB7]     [?.])	; space
        (space-mark   ?\xA0 [?\xA4]     [?_])	; hard space
        (newline-mark ?\n   [?\xB6 ?\n] [?$ ?\n])	; end-of-line
        ))

(setq whitespace-display-mappings
      ;; all numbers are Unicode codepoint in decimal. e.g. (insert-char 182 1)
      '(
        (space-mark 32 [183] [46])
        ;; (newline-mark 10 [182 10])
        (newline-mark 10 [36 10])
        (tab-mark 9 [187 9] [92 9])
        ))

(let ((class '((class color) (min-colors 89)))
      ;; Zenburn palette
      ;; colors with +x are lighter, colors with -x are darker
      (zenburn-fg "#dcdccc")
      (zenburn-fg-1 "#656555")
      (zenburn-bg-1 "#2b2b2b")
      (zenburn-bg-05 "#383838")
      (zenburn-bg "#3f3f3f")
      (zenburn-bg+1 "#4f4f4f")
      (zenburn-bg+2 "#5f5f5f")
      (zenburn-bg+3 "#6f6f6f")
      (zenburn-red+1 "#dca3a3")
      (zenburn-red "#cc9393")
      (zenburn-red-1 "#bc8383")
      (zenburn-red-2 "#ac7373")
      (zenburn-red-3 "#9c6363")
      (zenburn-red-4 "#8c5353")
      (zenburn-orange "#dfaf8f")
      (zenburn-yellow "#f0dfaf")
      (zenburn-yellow-1 "#e0cf9f")
      (zenburn-yellow-2 "#d0bf8f")
      (zenburn-green-1 "#5f7f5f")
      (zenburn-green "#7f9f7f")
      (zenburn-green+1 "#8fb28f")
      (zenburn-green+2 "#9fc59f")
      (zenburn-green+3 "#afd8af")
      (zenburn-green+4 "#bfebbf")
      (zenburn-cyan "#93e0e3")
      (zenburn-blue+1 "#94bff3")
      (zenburn-blue "#8cd0d3")
      (zenburn-blue-1 "#7cb8bb")
      (zenburn-blue-2 "#6ca0a3")
      (zenburn-blue-3 "#5c888b")
      (zenburn-blue-4 "#4c7073")
      (zenburn-blue-5 "#366060")
      (zenburn-magenta "#dc8cc3"))

  (custom-set-faces
   `(linum ((t (:inherit (shadow default) :background ,zenburn-bg :foreground ,zenburn-green+2))))
   `(whitespace-tab ((t (:background ,zenburn-bg :foreground ,zenburn-bg+2))))
   `(whitespace-space ((t (:background ,zenburn-bg+1 :foreground ,zenburn-red))))
   `(whitespace-hspace ((t (:background ,zenburn-bg :foreground ,zenburn-red))))
   `(whitespace-tab ((t (:background ,zenburn-bg :foreground ,zenburn-bg+2))))
   ))
