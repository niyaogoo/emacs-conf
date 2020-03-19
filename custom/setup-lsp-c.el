;;lsp mode for c, ccls backend

(use-package lsp-mode :commands lsp)
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)

(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp)))
  :init (setq lsp-file-watch-threshold 655350)
  )


(provide 'setup-lsp-c)
