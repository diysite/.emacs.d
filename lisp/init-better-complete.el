(use-package company
  :ensure t
;:bind (:map company-active-map
    ;;		    ("C-n" . 'company-select-next)
    ;;		    ("C-p" . 'company-select-previous))
    	:init
	(add-hook 'after-init-hook 'global-company-mode)
        :config
    	(setq company-minimum-prefix-length 1)
    	(setq company-idle-delay 0))
        ;mini buffer 变为垂直显示，增强显示
(use-package vertico
          :ensure t
          :init
          (vertico-mode 1))

        ;;显示详细帮助文字
(use-package marginalia
          :ensure t
          :init
          (marginalia-mode t))

        ;;增强显示后续内容，使用快捷键绑定
(use-package embark
          :ensure t
          :config
        (global-set-key (kbd "C-;") 'embark-act)
        (setq prefix-help-command 'embark-prefix-help-command))

        ;; 模糊搜索
(use-package orderless
          :ensure t
          :config
         (setq completion-styles '(orderless)))

        ;;搜索增强，替代ivy
(use-package consult
          :ensure t
          :config
        (global-set-key (kbd "C-s") 'consult-line)
        (global-set-key (kbd "M-s i") 'consult-imenu) ;;快速搜索函数
        ;;替代C-x b功能，包括最近打开的文件和buffer
        (global-set-key (kbd "C-x b") 'consult-buffer))

        (use-package embark-consult
          :ensure t)
          
(provide 'init-better-complete)
