(menu-bar-mode 0)
(set-scroll-bar-mode nil)
(tool-bar-mode 0)

(setq inhibit-startup-screen t)
(setq inhibit-startup-echo-area-message t)


(setq make-backup-files nil)


(add-to-list 'load-path "~/.emacs.d")

(require 'nav)

(add-to-list 'load-path "~/.emacs.d/evil-evil")

(require 'evil)
(evil-mode 1)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(nav-width 20)
 '(vc-follow-symlinks t))

(set-default-font "-*-terminus-medium-r-*-*-14-*-*-*-*-*-*-*")

;; (global-set-key (kbd "C-x C-f") 'anything-find-files)
;; (global-set-key (kbd "C-x b") 'anything-buffers+)

(desktop-save-mode 1)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


; Better buffer switching
(iswitchb-mode 1)
; Ignore all kinds of special Emacs buffers that start with a *,
; but don't ignore the R process buffer (*R*)
(add-to-list 'iswitchb-buffer-ignore "*[^R]")

(global-set-key (kbd "M-/") 'hippie-expand) 

(fset 'yes-or-no-p 'y-or-n-p)

(add-to-list 'auto-mode-alist '("\\.less\\'" . css-mode))


