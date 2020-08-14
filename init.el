(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

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
(straight-use-package 'swiper)
(straight-use-package 'counsel)
(straight-use-package 'posframe)

(require 'init-packages)
(require 'init-defaults)
(require 'init-ui)
(require 'init-org)
(require 'init-keybind)
(require 'init-lang)
