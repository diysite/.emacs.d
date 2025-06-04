;- set cursor style
(setq-default cursor-type 'bar)
;;安装主题
(use-package monokai-theme
	:ensure t
	:init
	(load-theme 'monokai 1))
;- turn off tool-bar
;- turn off scroll-bar
;- show linum-mode
;- turn off splash screen
;- save your config
;- define a function to quickly open your config file.
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)
(global-display-line-numbers-mode t)
;;设置字体
(set-face-attribute 'default nil :height 120)
(global-hl-line-mode t)

;; 这里的执行顺序非常重要，doom-modeline-mode 的激活时机一定要在设置global-mode-string 之后‘
(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode t))

(provide 'init-ui)
