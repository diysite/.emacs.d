(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-packages)
(require 'init-basic)
(require 'init-org)
(require 'init-better-complete)
(require 'init-ui)
(require 'init-bind-and-func)

(setq custom-file (expand-file-name "~/.emacs.d/lisp/custom.el"))
(load custom-file 'no-error 'no-message)
