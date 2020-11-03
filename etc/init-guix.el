;;(require 'exwm)
;;(require 'exwm-config)
;;(exwm-config-default)
;;
;;(add-to-list 'load-path "~/.guix-profile/share/emacs/site-lisp")
;;
;;(global-set-key (kbd "s-a") 'vterm)
;;
;;(defmacro keke/exwm-bind-lambda (key command)
;;  `(exwm-input-set-key ,(kbd key) (lambda () (interactive) ,command)))
;;(defmacro keke/exwm-bind-exec (key cmd)
;;  `(keke/exwm-bind-lambda ,key (start-process-shell-command ,cmd nil ,cmd)))
;;(keke/exwm-bind-exec "s-f" "firefox")
;;
;;
;;(require 'vterm)
