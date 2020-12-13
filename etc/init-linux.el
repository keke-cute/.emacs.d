(use-package rime
  :straight (rime :type git
		  :host github
		  :repo "DogLooksGood/emacs-rime"
		  :files ("*.el" "Makefile" "lib.c"))
  :custom
  (rime-emacs-module-header-root "~/Downloads")
  (rime-show-candidate 'posframe)
  (default-input-method "rime"))
