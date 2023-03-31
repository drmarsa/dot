;***********************************************************************
; .emacs for Dennis Marsa
;***********************************************************************

;***********************************************************************
; Add my emacs library to the load path
;***********************************************************************
(setq load-path (cons (concat "/home/" user-login-name "/emacs") load-path))

;***********************************************************************
; Show the time on the mode line
;***********************************************************************
(display-time)

;***********************************************************************
; Show matching parentheses next to cursor
;***********************************************************************
(require `paren)
(show-paren-mode t)

;***********************************************************************
; Various global variable settings
;***********************************************************************
(setq inhibit-startup-message t)
(setq make-backup-files nil)
(setq require-final-newline t)
(setq-default tab-width 8)
(setq-default truncate-lines t)
(setq-default truncate-partial-width-windows nil)
(setq-default indent-tabs-mode nil)  ; convert tabs to spaces
(setq-default display-line-numbers t)

;***********************************************************************
; My own key bindings
;***********************************************************************
(global-set-key "l" 'goto-line)
(global-set-key "" 'isearch-forward-regexp)
(global-set-key "" 'isearch-backward-regexp)
(global-set-key "" 'compile)
(global-set-key "" 'compile)
(global-set-key "" 'shell)
(global-set-key "\M-s" 'compare-windows)

;***********************************************************************
; I want ^L to put the line I'm on at the top of the window
;***********************************************************************
(defun my-recenter () (interactive) (recenter 0))
(global-set-key "" 'my-recenter)

;***********************************************************************
; I accidentally type ^X^C sometimes, guard against that
;***********************************************************************
(global-set-key "" 'my-quit)
(defun my-quit () (interactive)
  (if (y-or-n-p '"Really quit? ") (save-buffers-kill-emacs)))

;***********************************************************************
; I know how to use narrow-to-region, so enable it
;***********************************************************************
(put 'narrow-to-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode nil)
 '(custom-enabled-themes '(tango-dark))
 '(display-time-mode t)
 '(fringe-mode 15 nil (fringe))
 '(global-display-line-numbers-mode t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(line-number-mode nil)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 90 :width normal)))))
