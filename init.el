(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
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
;;(require 'setup-lsp-java)
(require 'setup-treemacs)
(require 'setup-helm)
(require 'setup-helm-gtags)
(require 'setup-cedet)
;;(require 'setup-ggtags)

(use-package solarized-theme)
(use-package atom-one-dark-theme)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("b96849affc3dbee03dbed408ee72c6d394dbd5f28dcd222935ea4656869df4ec" "f1c21ec508b17eb15e8a30bc77951a50a88929e74a377edc9b6d5d51397d88c8" "ce6129f9462fd637890eff6afc14a4f5e35a41acf2569cedcb1bae5d3ec52f77" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" default)))
 '(package-selected-packages
   (quote
    (helm-gtags helm yasnippet use-package treemacs-projectile treemacs-magit treemacs-icons-dired treemacs-evil solarized-theme rainbow-delimiters lsp-ui lsp-java ggtags dap-mode company-lsp bing-dict auto-highlight-symbol atom-one-dark-theme))))

;;(load-theme 'solarized-light)
(load-theme 'atom-one-dark)
