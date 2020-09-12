(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(straight-use-package 'magit)
(straight-use-package 'vterm)
(straight-use-package 'terraform-mode)

(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-a-linux* (eq system-type 'gnu/linux))

(defun graphic-p ()
  (display-graphic-p))

(when (memq window-system '(mac ns))
  (add-to-list 'default-frame-alist '(ns-appearance . dark)) ; nil for dark text
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t)))

(when (graphic-p)
  ;;  (add-to-list 'default-frame-alist'(ns-transparent-titlebar . t))
  ;;  (add-to-list 'default-frame-alist'(ns-appearance . dark))
  ;;  (add-to-list 'default-frame-alist'(alpha . (80 . 75)))
  (menu-bar-mode 1)
  (scroll-bar-mode -1)
  (global-linum-mode 1)
  (tool-bar-mode -1)
  (setq org-startup-with-inline-images t)
  ;;      (setq initial-frame-alist
  ;;	    '(
  ;;	      (width . 106)
  ;;	      (height . 56)
  ;;	      )))
  )
(display-time-mode 1)
;; 指定模式禁用行号
(add-hook 'vterm-mode-hook 'my-inhibit-global-linum-mode)
(defun my-inhibit-global-linum-mode ()
  "Counter-act `global-linum-mode'."
  (add-hook 'after-change-major-mode-hook
	    (lambda () (linum-mode 0))
	    :append :local))
;; 字体设置
(when (graphic-p)
  (let ((emacs-font-size 14)
	(emacs-font-name "OperatorMono Nerd Font"))
    (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval emacs-font-size)))
    (set-fontset-font (frame-parameter nil 'font) 'unicode (eval emacs-font-name)))
  (with-eval-after-load 'org
    (defun org-buffer-face-mode-variable ()
      (interactive)
      (make-face 'width-font-face)
      (set-face-attribute 'width-font-face nil :font "Sarasa Mono SC 15")
      (setq buffer-face-mode-face 'width-font-face)
      (buffer-face-mode))
    (add-hook 'org-mode-hook 'org-buffer-face-mode-variable)))

;; 自动加载外部修改过的文件
(global-auto-revert-mode 1)
;; 关闭自己生产的保存文件
(setq auto-save-default nil)
;; 关闭自己生产的备份文件
(setq make-backup-files nil)
;; 选中某个区域继续编辑可以替换掉该区域
(delete-selection-mode 1)
;; 设置h 文件默认为c++文件
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;; orgmode
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
;; without lock files
(setq create-lockfiles nil)
;; y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

;;(straight-use-package 'org-roam)
;;(straight-use-package 'org-roam-server)
;;(use-package org-roam
;;  :hook
;;  (after-init . org-roam-mode)
;;  :custom
;;  (org-roam-directory "~/src/org/roam")
;;  :bind (:map org-roam-mode-map
;;	      (("C-c n l" . org-roam)
;;	       ("C-c n f" . org-roam-find-file)
;;	       ("C-c n g" . org-roam-graph-show))
;;	      :map org-mode-map
;;	      (("C-c n i" . org-roam-insert))
;;	      (("C-c n I" . org-roam-insert-immediate))))
;;(use-package org-roam-server
;;  :config
;;  (setq org-roam-server-host "127.0.0.1"
;;      org-roam-server-port 9090
;;      org-roam-server-export-inline-images t
;;      org-roam-server-authenticate nil
;;      org-roam-server-label-truncate t
;;      org-roam-server-label-truncate-length 60
;;      org-roam-server-label-wrap-length 20)
;;  (org-roam-server-mode)
;;  (require 'org-roam-protocol))
;;

(straight-use-package 'which-key)
(use-package which-key
  :config
  (which-key-mode))

(when (graphic-p)
  (when *is-a-linux*
    (use-package rime
      :straight (rime :type git
		      :host github
		      :repo "DogLooksGood/emacs-rime"
		      :files ("*.el" "Makefile" "lib.c"))
      :custom
      (default-input-method "rime")
      (rime-show-candidate 'posframe))))

(straight-use-package 'modus-operandi-theme)
(straight-use-package 'modus-vivendi-theme)
(straight-use-package 'circadian)
(use-package
  circadian
  :config
  ;; 经纬度，可以在https://www.latlong.net/获取，默认是广州的
  (setq calendar-latitude 35.388779
	calendar-longitude 116.084290)
  ;; sunrise 白天用的主题 sunset 晚上用的主题
  (setq circadian-themes '((:sunrise . modus-operandi)
			   (:sunset . modus-vivendi)))
  (circadian-setup))

(straight-use-package 'helm)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(helm-mode 1)

(straight-use-package 'ace-window)
(global-set-key (kbd "M-o") 'ace-window)
(setq aw-dispatch-always t)

(straight-use-package 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
