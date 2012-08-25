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

;; Get rid of auto-fill mode
(auto-fill-mode -1)
(remove-hook 'text-mode-hook #'turn-on-auto-fill)

(set-frame-font "Inconsolata-g-14")

(load-theme 'solarized-dark)

(textmate-mode)
(global-set-key (kbd "M-s t") 'textmate-clear-cache)


(add-hook 'prog-mode-hook 'prelude-turn-off-whitespace t)
(add-hook 'prog-mode-hook 'flyspell-prog-mode t)

;; When Finder asks Emacs to open a file, don't create a new frame for it
(setq ns-pop-up-frames nil)

;; For some reason which I cannot begin to fathom, Emacs' default behavior
;; when a file is dragged from the Finder onto an Emacs frame is to insert
;; the file's contents at the spot where the mouse button is released. It
;; makes over 9000 times more sense just to open the file in a new buffer.
(define-key global-map [ns-drag-file] 'ns-find-file)

;; Integrate with the standard OS X trash directory
(setq
 delete-by-moving-to-trash t
 trash-directory (expand-file-name "~/.Trash"))

(server-start)
