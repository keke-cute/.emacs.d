;;; 一些默认设置项目
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
;; 设置 go 的 path 目录
(setenv "PATH" (concat (getenv "PATH") ":/home/keke/go/bin"))
(setq exec-path (append exec-path '("/home/keke/go/bin")))
(provide 'init-defaults)
