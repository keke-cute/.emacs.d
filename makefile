EE ?= emacs -Q --batch --eval "(require 'ob-tangle)"

init.el: readme.org init.el
	$(EE) --eval '(org-babel-tangle-publish t "$<" "$(@D)/")'
