(require 'org-install)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))
(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7ef2d412723918ed90bd2ebb7190f61212dd9a7d335c0fef4d88d75dee563dc9" "a99243b48f488d8a6c2013df6acdf7d66c2d764901246995924141365fcff463" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
