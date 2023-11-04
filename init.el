(setq dotfiles-dir (file-name-directory (or load-file-name (buffer-file-name))))

;; Use package management!
(require 'package)

(setq package-archives
      '(("org"          . "http://orgmode.org/elpa/")
	("melpa"        . "http://melpa.org/packages/")
        ("melpa-stable" . "http://stable.melpa.org/packages/")
        ("gnu"          . "http://elpa.gnu.org/packages/")))

(when (boundp 'package-pinned-packages)
  (setq package-pinned-packages
	`((org              . "gnu")
	  (org-ql           . "melpa")
	  (org-sidebar      . "melpa")
	  (org-super-agenda . "melpa"))))

(setq package-archive-priorities
      '(("gnu"          . 100)
	("org"          . 90)
	("melpa-stable" . 80)
	("melpa"        . 70)
	("marmalade"    . 60)))

(package-initialize)

; load up the main file
(require 'ob)
(require 'org)
(require 'dired)
(message (org-version))
(org-babel-load-file (expand-file-name "settings.org" dotfiles-dir))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-log-into-drawer t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-language-environment "UTF-8")
