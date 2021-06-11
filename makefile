EMACS ?= emacs

init: readme.org
	@echo "Generate init.el from readme.org"
	@rm -rf timestamps/init.cache
	@$(EMACS) -Q --batch -l export.el --eval '(org-publish "init")'
