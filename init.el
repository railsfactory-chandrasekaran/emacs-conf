(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("eb0a314ac9f75a2bf6ed53563b5d28b563eeba938f8433f6d1db781a47da1366" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Window switching. (C-x o goes to the next window)
(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1))) ;; back one
(global-set-key (kbd "C-x C-o") (lambda () (interactive) (other-window 2))) ;; forward two
;; End of window switching


;; Default font size
(set-face-attribute 'default nil :height 90)

;; Neo tree setup
(global-set-key [f8] 'neotree-toggle)

;; Default theme
(load-theme 'dracula t)

;; Default rails mode enabled
(projectile-rails-global-mode)

;; Buffer auto reload mode
(global-auto-revert-mode t)

;; Diabling menu bar
(menu-bar-mode -1) 
;; Disabling scroll bar
(toggle-scroll-bar -1) 
;; Disabling tool bar
(tool-bar-mode -1) 

;; Enable auto complete mode
(ac-config-default)

;; Enable smartparens mode
(smartparens-global-mode)


;; Ruby mode setup ;; Need to check its working on not
(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'ruby-mode-hook (lambda () (rvm-activate-corresponding-ruby))) 

(add-hook 'robe-mode-hook 'ac-robe-setup)

;; Rvm mode
;; (rvm-activate-corresponding-ruby)

;; Show line number globally
(global-linum-mode t)

;; Ansi Color mode for the shells
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-to-list 'comint-output-filter-functions 'ansi-color-process-output)

;; Global Projectile mode on
(projectile-global-mode) 
