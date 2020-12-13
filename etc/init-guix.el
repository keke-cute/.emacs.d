(add-to-list 'load-path "/run/current-system/profile/share/emacs/site-lisp/")
(require 'exwm)
(require 'exwm-config)
(exwm-config-example)
(require 'exwm-systemtray)
(exwm-systemtray-enable)
(use-package rime
  :custom
  (rime-show-candidate 'posframe)
  (default-input-method "rime"))

(defun keke/run-in-background (command)
  (let ((command-parts (split-string command "[ ]+")))
    (apply #'call-process `(,(car command-parts) nil 0 nil ,@(cdr command-parts)))))

(defun keke/set-wallpaper ()
  (interactive)
  (start-process-shell-command
      "feh" nil  "feh --bg-scale /home/keke/Downloads/86045963_p0.png"))

(keke/set-wallpaper)
(keke/run-in-background "picom")
;;
;;(global-set-key (kbd "s-a") 'vterm)
;;
;;(defmacro keke/exwm-bind-lambda (key command)
;;  `(exwm-input-set-key ,(kbd key) (lambda () (interactive) ,command)))
;;(defmacro keke/exwm-bind-exec (key cmd)
;;  `(keke/exwm-bind-lambda ,key (start-process-shell-command ,cmd nil ,cmd)))
;;(keke/exwm-bind-exec "s-f" "firefox"
