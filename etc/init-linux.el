(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-a-linux* (eq system-type 'gnu/linux))
(defun graphic-p ()
  (display-graphic-p))

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

(straight-use-package 'telega)
