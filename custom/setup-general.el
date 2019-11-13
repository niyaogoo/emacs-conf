;; use space to indent by default
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;; Compilation
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))
;; setup GDB
(setq
 ;; use gdb-many-windows by default
 gdb-many-windows t
 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t
 )

;; company
(use-package company
  :init
  (global-company-mode 1)
  (delete 'company-semantic company-backends))
;; (define-key c-mode-map  [(control tab)] 'company-complete)
;; (define-key c++-mode-map  [(control tab)] 'company-complete)

;; Package: projejctile
(use-package projectile
  :init
  (projectile-global-mode)
  (setq projectile-enable-caching t)
  (global-set-key (kbd "M-c") 'projectile-find-file))

(windmove-default-keybindings)

;; bing-dict
(use-package bing-dict)

;; auto highlight 
(use-package auto-highlight-symbol
  :init
  (global-auto-highlight-symbol-mode))

(use-package undo-tree
  :init
  (global-undo-tree-mode))

(use-package rainbow-delimiters
  :init
  (add-hook 'c-mode-common-hook
            (lambda ()
            (rainbow-delimiters-mode))))

;; global line number
(global-linum-mode)

(provide 'setup-general)
