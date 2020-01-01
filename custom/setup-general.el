;; use space to indent by default
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(tool-bar-mode -1)
(menu-bar-mode -1)

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

(use-package highlight-blocks
  :init
  (add-hook 'c-mode-common-hook
            (lambda ()
              (highlight-blocks-mode))))

;; global line number
(global-linum-mode)

(defun goto-match-paren (arg)
  "Go to the matching  if on (){}[], similar to vi style of % "
  (interactive "p")
  ;; first, check for "outside of bracket" positions expected by forward-sexp, etc
  (cond ((looking-at "[\[\(\{]") (forward-sexp))
        ((looking-back "[\]\)\}]" 1) (backward-sexp))
        ;; now, try to succeed from inside of a bracket
        ((looking-at "[\]\)\}]") (forward-char) (backward-sexp))
        ((looking-back "[\[\(\{]" 1) (backward-char) (forward-sexp))
        (t nil)
        )
  )

(provide 'setup-general)
