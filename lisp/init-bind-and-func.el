;; 设置默认打开设置文档快捷键
(defun open-my-init-file()
    	(interactive)
    	(find-file "~/.emacs.d/init.el"))

(global-set-key (kbd "<f2>") 'open-my-init-file)

(provide 'init-bind-and-func)
