;; basic lsp and c/c++
(straight-use-package 'lsp-mode)
(straight-use-package 'lsp-ui)
(use-package lsp-ui
  :commands lsp-ui-mode)
(straight-use-package 'company-lsp)
(use-package company-lsp
  :commands company-lsp)
(straight-use-package 'ccls)
(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp))))
(setq ccls-executable "~/ccls/Release/ccls")
;; go
(straight-use-package 'go-mode)
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook (go-mode . lsp-deferred))
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)
;; basic language support
(straight-use-package 'haskell-mode)
(provide 'init-lang)
