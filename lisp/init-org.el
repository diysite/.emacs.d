(use-package org-contrib
  :ensure t)

(require 'org-tempo)
(setq org-src-fontify-natively t)

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!/!)")
              (sequence "WAITING(w@/!)" "SOMEDAY(S)" "|" "CANCELLED(c@/!)" "MEETING(m)" "PHONE(p)"))))

(require 'org-checklist)
;; need repeat task and properties
(setq org-log-done t)
(setq org-log-into-drawer t)

;; C-c C-s schedule
;; C-c C-d deadline
(global-set-key (kbd "C-c a") 'org-agenda)
(setq org-agenda-files '("~/gtd.org"))
(setq org-agenda-span 'day)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/gtd.org" "Workspace")
         "* TODO [#B] %?\n  %i\n %U"
         :empty-lines 1)))

(global-set-key (kbd "C-c r") 'org-capture)

(provide 'init-org)
