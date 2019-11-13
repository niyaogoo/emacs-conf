(require 'package)
;;(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ;;("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

(add-to-list 'package-archives
         '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
    (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(require 'setup-lsp-java)
(require 'setup-ggtags)
(require 'setup-treemacs)

(use-package solarized-theme)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "9271c0ad73ef29af016032376d36e8aed4e89eff17908c0b578c33e54dfa1da1" "d543a5f82ce200d50bdce81b2ecc4db51422439ba7c0e6845483dd89566e4cf9" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" default)))
 '(inhibit-startup-screen t)
 '(linum-format "%4d ")
 '(package-selected-packages
   (quote
    (undo-tree auto-highlight-symbol rainbow-delimiters treemacs-magit treemacs-icons-dired solarized-theme bing-dict use-package projectile company atom-one-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'solarized-light)
