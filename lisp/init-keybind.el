(straight-use-package 'general)
(use-package general
  :config
  (general-evil-setup)
  (general-create-definer leader-define :prefix "SPC" :states '(normal visual motion) :keymaps 'override)
  (leader-define
    ;; misc
    "mj" 'emojify-insert-emoji
    "!" 'eshell-command
    "gg" 'google-this-mode-submap
    ;; evil
    "v" 'evil-visual-block
    ;; Window keybinds
    "w1" 'delete-other-windows
    "wo" 'other-window
    "wv" 'split-window-vertically
    "w-" 'split-window-horizontally
    "wl" 'evil-window-right
    "wh" 'evil-window-left
    "wk" 'evil-window-up
    "wj" 'evil-window-down
    "wd" 'delete-window
    ;; Buffer
    "bs" 'ido-switch-buffer
    "bk" 'ido-kill-buffer
    ;; file
    "s" 'swiper
    "r" 'ivy-resume
    "fd" 'ido-dired
    "fs" 'save-buffer
    "ff" 'counsel-find-file
    ;;quit
    "qq" 'save-buffers-kill-emacs))
(provide 'init-keybind)
