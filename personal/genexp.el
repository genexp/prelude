(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(set-frame-font "Inconsolata-g-14")

(load-theme 'solarized-dark)

(textmate-mode)

(add-hook 'prog-mode-hook 'prelude-turn-off-whitespace t)
(add-hook 'prog-mode-hook 'flyspell-prog-mode t)

(server-start)
