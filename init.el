(require 'org-install)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "readme.org" user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("2eefac73fe17cd822d564ad5a2c932d91fd540205f567a7696af2deefbd94292" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ivy-posframe ((t (:background "#000000"))))
 '(ivy-posframe-border ((t (:background "#6272a4"))))
 '(ivy-posframe-cursor ((t (:background "#61bfff")))))
