(require 'package)
(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                      ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;;(add-to-list 'package-archives
;;         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
;; Do not develop java in emacs, so suck!
(require 'setup-lsp-java)
(require 'setup-treemacs)
(require 'setup-helm)
;;(require 'setup-helm-gtags)
(require 'setup-cedet)
(require 'setup-lsp-c)
(require 'setup-lsp-js)
;;(require 'setup-ggtags)

;;(use-package solarized-theme)
;;(use-package atom-one-dark-theme)
(use-package spacemacs-theme
  :commands spacemacs-theme)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
   (quote
    (json-mode web-mode tide yaml-mode zenburn-theme yasnippet use-package treemacs-projectile treemacs-magit treemacs-icons-dired treemacs-evil spacemacs-theme solarized-theme rainbow-delimiters lsp-ui lsp-java highlight-blocks helm-xref helm-swoop helm-projectile helm-gtags dap-mode company-lsp ccls bing-dict auto-highlight-symbol atom-one-dark-theme))))

(load-theme 'spacemacs-dark)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'scroll-left 'disabled nil)
