;;lsp mode for c, ccls backend
(require 'setup-lsp)

(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp)))
  :init (setq lsp-file-watch-threshold 655350)
  )

(provide 'setup-lsp-c)
