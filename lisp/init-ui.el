;; set ui
(add-to-list 'default-frame-alist'(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist'(ns-appearance . dark))
(add-to-list 'default-frame-alist'(alpha . (80 . 75)))
(setq inhibit-splash-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-linum-mode 1)
(global-hl-line-mode t)
(set-frame-font "Operator Mono Book 14")
;; (set-frame-font "Sarasa Mono SC Semibold 12")
(straight-use-package 'dashboard)
(use-package dashboard
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-banner-logo-title ";;; Happy Hacking Keke , Emacs Love You ~")
  (setq dashboard-startup-banner "~/.emacs.d/img/logo.png")
  (setq dashboard-set-heading-icons t)
  (setq dashboard-items '((recents  . 5)
                        (agenda . 5)))
  (setq dashboard-set-file-icons t))
(straight-use-package 'doom-themes)
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-tomorrow-night t))
(straight-use-package 'nyan-mode)
(use-package nyan-mode
  :custom
  (nyan-cat-face-number 4)
  (nyan-animate-nyancat t)
  :hook
  (doom-modeline-mode . nyan-mode))
(straight-use-package 'doom-modeline)
(use-package doom-modeline
      :hook (after-init . doom-modeline-mode))
(provide 'init-ui)
