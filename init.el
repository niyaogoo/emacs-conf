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
(require 'setup-lsp)
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

(use-package yaml-mode
  :commands yaml-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e1d09f1b2afc2fed6feb1d672be5ec6ae61f84e058cb757689edb669be926896" "b89ae2d35d2e18e4286c8be8aaecb41022c1a306070f64a66fd114310ade88aa" "17d158ec27961156ee222055f1089364b7fd38cf838304a1f9fe8b1cd561c188" "d4f8fcc20d4b44bf5796196dbeabec42078c2ddb16dcb6ec145a1c610e0842f3" "939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "409e4d689f1e29e5a18f536507e6dc760ee9da76dc56481aaa0696705e6be968" "31f8d16d264e14e8e39c4f291e26cdd5516772a41660ef2ad895244c22024bd2" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(package-selected-packages
   (quote
    (0blayout stickyfunc-enhance vscode-dark-plus-theme material-theme gruvbox-theme color-theme-sanityinc-tomorrow which-key helm-lsp vscdark-theme json-mode web-mode tide yaml-mode zenburn-theme yasnippet use-package treemacs-projectile treemacs-magit treemacs-icons-dired treemacs-evil spacemacs-theme solarized-theme rainbow-delimiters lsp-ui lsp-java highlight-blocks helm-xref helm-swoop helm-projectile helm-gtags dap-mode company-lsp ccls bing-dict auto-highlight-symbol atom-one-dark-theme)))
 '(xterm-mouse-mode t))

(load-theme 'spacemacs-dark)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'scroll-left 'disabled nil)
