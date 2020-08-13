;; This is example

(use-package lsp-mode
  ;; set prefix for lsp-command-keymap (few alternatives - "c-l", "C-c l")
  :init (progn
          (setq lsp-keymap-prefix "M-l") (setq lsp-enable-symbol-highlighting nil)
          (global-set-key (kbd "M-r") 'lsp-find-references))
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
;; if you are helm user
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
;;(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key
  :config
  (which-key-mode))



(provide 'setup-lsp)
